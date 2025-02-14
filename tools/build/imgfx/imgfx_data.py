#!/usr/bin/env python3

from dataclasses import dataclass
import argparse
import json
from pathlib import Path
from typing import Any, List
import yaml as yaml_loader

@dataclass
class Vertex:
    idx: int
    x: int
    y: int
    z: int
    u: int
    v: int
    r: int
    g: int
    b: int
    a: int

    def toJSON(self):
        return "      { \"pos\": [" + f"{self.x}, {self.y}, {self.z}" + "], \"uv\": [" + f"{self.u}, {self.v}" + "], \"rgba\": [" + f"{self.r}, {self.g}, {self.b}, {self.a}" + "] }"

@dataclass
class Triangle:
    i: int
    j: int
    k: int

    def toJSON(self):
        return f"    [{self.i}, {self.j}, {self.k}]"

@dataclass
class Anim:
    name: str
    offset: int
    vtx_offset: int
    gfx_offset: int
    vtx_count: int
    gfx_count: int
    keyframes: int
    flags: int

    frames: List[List[Vertex]]
    triangles: List[Triangle]

    def toJSON(self):
        framestr = ",\n".join(["    [\n" + ",\n".join([v.toJSON() for v in frame]) + "\n    ]" for i, frame in enumerate(self.frames)])
        trianglestr = ",\n".join([t.toJSON() for t in self.triangles])

        ret = "{\n"
        ret += "  \"flags\": " + str(self.flags) + ",\n"
        ret += "  \"frames\": [\n" + framestr + "],\n"
        ret += "  \"triangles\": [\n" + trianglestr + "]\n"
        ret += "}"

        return ret

    @staticmethod
    def fromJSON(name: str, data: Any) -> "Anim":
        flags = data["flags"]
        frames = [[Vertex(idx, *vtx["pos"], *vtx["uv"], *vtx["rgba"]) for idx, vtx in enumerate(frame)] for frame in data["frames"]]
        triangles = [Triangle(*t) for t in data["triangles"]]

        return Anim(
            name=name,
            offset=0,
            vtx_offset=0,
            gfx_offset=0,
            vtx_count=0,
            gfx_count=0,
            keyframes=len(frames),
            flags=flags,
            frames=frames,
            triangles=triangles
        )

def build(inputs: List[Path], output: Path):
    with open(output, "w") as f:
        f.write("/* NOTE: This file is autogenerated, do not edit */\n\n")
        f.write("#include \"PR/gbi.h\"\n")
        f.write("#include \"macros.h\"\n")
        f.write("#include \"imgfx.h\"\n\n")

        for input in inputs:
            with open(input, "r") as fin:
                in_json = json.load(fin)

            anim = Anim.fromJSON(input.name[:-5], in_json)

            vtx_name = f"{anim.name}_keyframes"
            gfx_name = f"{anim.name}_gfx"

            # this has padding before it..maybe a file split?
            if anim.name == "unused_1":
                f.write(f"s32 padding_{anim.name}[] = {{ 0, 0 }};\n\n")

            # vtx
            f.write(f"ImgFXVtx {vtx_name}[{len(anim.frames)}][{len(anim.frames[0])}] = {{\n")
            for frame in anim.frames:
                f.write("    {\n")
                for vtx in frame:
                    f.write(f"        {{ {{{vtx.x}, {vtx.y}, {vtx.z}}}, {{{vtx.u}, {vtx.v}}}, {{{vtx.r}, {vtx.g}, {vtx.b}}}, {vtx.a} }},\n")
                f.write("    },\n")
            f.write("};\n\n")

            # gfx
            f.write(f"Gfx {gfx_name}[] = {{\n")

            # TODO hard-coded
            cur_tri = 0
            just_chunked = False
            chunk_text = ""
            max_t1 = 0
            max_t2 = 0
            min_t = 0
            sub_num = 0
            old_max_t = 0
            while cur_tri < len(anim.triangles):
                # Vertex command every 16 triangles
                t1 = anim.triangles[cur_tri]
                t2 = anim.triangles[cur_tri + 1] if cur_tri + 1 < len(anim.triangles) else None

                t1x = t1.i - sub_num
                t1y = t1.j - sub_num
                t1z = t1.k - sub_num
                max_t1 = max(max_t1, t1x, t1y, t1z)
                t2x = 0 if t2 is None else t2.i - sub_num
                t2y = 0 if t2 is None else t2.j - sub_num
                t2z = 0 if t2 is None else t2.k - sub_num
                max_t2 = max(max_t2, t2x, t2y, t2z)
                min_t = min(min_t, t1x, t1y, t1z, t2x, t2y, t2z)

                # We need a new chunk
                if max_t1 >= 32 and not just_chunked:
                    chunk_text = f"    gsSPVertex((u8*){vtx_name} + 0xC * {sub_num}, {min(32, max_t1 + 1)}, 0),\n" + chunk_text
                    just_chunked = True
                    f.write(chunk_text)
                    chunk_text = ""
                    sub_num += old_max_t - min_t + 1
                    min_t = 32
                    max_t1 = 0
                    max_t2 = 0
                    continue

                just_chunked = False
                if max_t2 >= 32 or t2 is None:
                    chunk_text += f"    gsSP1Triangle({t1x}, {t1y}, {t1z}, 0),\n"
                    cur_tri += 1
                    old_max_t = max_t1
                else:
                    chunk_text += f"    gsSP2Triangles({t1x}, {t1y}, {t1z}, 0, {t2x}, {t2y}, {t2z}, 0),\n"
                    cur_tri += 2
                    old_max_t = max(max_t1, max_t2)

            # Dump final chunk
            chunk_text = f"    gsSPVertex((u8*){vtx_name} + 0xC * {sub_num}, {max(max_t1, max_t2) + 1}, 0),\n" + chunk_text
            f.write(chunk_text)
            f.write("    gsSPEndDisplayList(),\n")
            f.write("};\n\n")

            # header
            f.write(f"ImgFXAnimHeader {anim.name}_header = {{\n")
            f.write(f"    .keyframesOffset = {vtx_name}[0],\n")
            f.write(f"    .gfxOffset = {gfx_name},\n")
            f.write(f"    .vtxCount = ARRAY_COUNT({vtx_name}[0]),\n")
            f.write(f"    .gfxCount = ARRAY_COUNT({gfx_name}),\n")
            f.write(f"    .keyframesCount = ARRAY_COUNT({vtx_name}),\n")
            f.write(f"    .flags = {anim.flags},\n")
            f.write("};\n\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ImgFX animation c file builder")
    parser.add_argument("inputs", type=Path, help="json files to build, passed in order", nargs="+")
    parser.add_argument("output", type=Path, help="Output c file path")
    args = parser.parse_args()

    build(args.inputs, args.output)
