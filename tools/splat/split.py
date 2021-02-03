#! /usr/bin/python3

import argparse
import importlib
import importlib.util
import os
from pathlib import Path
import yaml
import pickle
from colorama import Style, Fore
from segtypes.segment import parse_segment_type
from segtypes.n64.code import N64SegCode
from util import log
from util.symbol import Symbol

parser = argparse.ArgumentParser(
    description="Split a rom given a rom, a config, and output directory")
parser.add_argument("rom", help="path to a .z64 rom")
parser.add_argument("config", help="path to a compatible config .yaml file")
parser.add_argument("outdir", help="a directory in which to extract the rom")
parser.add_argument("--modes", nargs="+", default="all")
parser.add_argument("--verbose", action="store_true",
                    help="Enable debug logging")
parser.add_argument("--new", action="store_true",
                    help="Only split changed segments in config")

sym_isolated_map = {}

def write_ldscript(rom_name, repo_path, sections, options):
    with open(os.path.join(repo_path, rom_name + ".ld"), "w", newline="\n") as f:
        f.write(
            "#ifndef SPLAT_BEGIN_SEG\n"
                "#ifndef SHIFT\n"
                    "#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \\\n"
                    "    . = start;\\\n"
                    "    name##_ROM_START = .;\\\n"
                    "    name##_VRAM = ADDR(.name);\\\n"
                    "    .name vram : AT(name##_ROM_START) subalign {\n"
                "#else\n"
                    "#define SPLAT_BEGIN_SEG(name, start, vram, subalign) \\\n"
                    "    name##_ROM_START = .;\\\n"
                    "    name##_VRAM = ADDR(.name);\\\n"
                    "    .name vram : AT(name##_ROM_START) subalign {\n"
                "#endif\n"
            "#endif\n"
            "\n"
            "#ifndef SPLAT_END_SEG\n"
                "#ifndef SHIFT\n"
                    "#define SPLAT_END_SEG(name, end) \\\n"
                    "    } \\\n"
                    "    . = end;\\\n"
                    "    name##_ROM_END = .;\n"
                "#else\n"
                    "#define SPLAT_END_SEG(name, end) \\\n"
                    "    } \\\n"
                    "    name##_ROM_END = .;\n"
                "#endif\n"
            "#endif\n"
            "\n"
        )

        if options.get("ld_bare", False):
            f.write("\n".join(sections))
        else:
            f.write(
                "SECTIONS\n"
                "{\n"
                "    "
            )
            f.write("\n    ".join(s.replace("\n", "\n    ") for s in sections)[:-4])
            f.write(
                "}\n"
            )


def parse_file_start(split_file):
    return split_file[0] if "start" not in split_file else split_file["start"]


def get_symbol_addrs_path(repo_path, options):
    return os.path.join(repo_path, options.get("symbol_addrs_path", "symbol_addrs.txt"))


def get_undefined_syms_path(repo_path, options):
    return os.path.join(repo_path, options.get("undefined_syms_path", "undefined_syms.txt"))


def get_undefined_syms_auto_path(repo_path, options):
    return os.path.join(repo_path, options.get("undefined_syms_auto_path", "undefined_syms_auto.txt"))


def get_undefined_funcs_auto_path(repo_path, options):
    return os.path.join(repo_path, options.get("undefined_funcs_auto_path", "undefined_funcs_auto.txt"))


def get_cache_path(repo_path, options):
    return os.path.join(repo_path, options.get("cache_path", ".splat_cache"))


def gather_symbols(symbol_addrs_path, undefined_syms_path):
    symbols = []

    # Manual list of func name / addrs
    if os.path.exists(symbol_addrs_path):
        with open(symbol_addrs_path) as f:
            func_addrs_lines = f.readlines()

        for line in func_addrs_lines:
            line = line.strip()
            if not line == "" and not line.startswith("//"):
                comment_loc = line.find("//")
                line_ext = ""

                if comment_loc != -1:
                    line_ext = line[comment_loc + 2:].strip()
                    line = line[:comment_loc].strip()

                line_split = line.split("=")
                name = line_split[0].strip()
                addr = int(line_split[1].strip()[:-1], 0)

                sym = Symbol(addr, given_name=name)

                if line_ext:
                    for info in line_ext.split(" "):
                        if info.startswith("type:"):
                            type = info.split(":")[1]
                            sym.type = type
                        if info.startswith("size:"):
                            size = int(info.split(":")[1], 0)
                            sym.size = size
                        if info.startswith("rom:"):
                            rom_addr = int(info.split(":")[1], 0)
                            sym.rom = rom_addr
                symbols.append(sym)

    # Maybe let's not use this
    if os.path.exists(undefined_syms_path):
        with open(undefined_syms_path) as f:
            us_lines = f.readlines()

        for line in us_lines:
            line = line.strip()
            if not line == "" and not line.startswith("//"):
                line_split = line.split("=")
                name = line_split[0].strip()
                addr = int(line_split[1].strip()[:-1], 0)
                symbols.append(Symbol(addr, given_name=name))

    return symbols


def get_base_segment_class(seg_type, platform):
    try:
        segmodule = importlib.import_module(f"segtypes.{platform}.{seg_type}")
    except ModuleNotFoundError:
        return None

    return getattr(segmodule, f"{platform.upper()}Seg{seg_type[0].upper()}{seg_type[1:]}")


def get_extension_dir(options, config_path):
    if "extensions" not in options:
        return None
    return os.path.join(Path(config_path).parent, options["extensions"])


def get_extension_class(options, config_path, seg_type, platform):
    ext_dir = get_extension_dir(options, config_path)
    if ext_dir == None:
        return None

    try:
        ext_spec = importlib.util.spec_from_file_location(f"{platform}.segtypes.{seg_type}", os.path.join(ext_dir, f"{seg_type}.py"))
        ext_mod = importlib.util.module_from_spec(ext_spec)
        ext_spec.loader.exec_module(ext_mod)
    except Exception as err:
        log.write(err, status="error")
        return None

    return getattr(ext_mod, f"{platform.upper()}Seg{seg_type[0].upper()}{seg_type[1:]}")

def get_platform(options):
    return options.get("platform", "n64")

def fmt_size(size):
    if size > 1000000:
        return str(size // 1000000) + " MB"
    elif size > 1000:
        return str(size // 1000) + " KB"
    else:
        return str(size) + " B"


def initialize_segments(options, config_path, config_segments):
    seen_segment_names = set()
    ret = []

    for i, segment in enumerate(config_segments):
        if len(segment) == 1:
            # We're at the end
            continue

        seg_type = parse_segment_type(segment)

        platform = get_platform(options)

        segment_class = get_base_segment_class(seg_type, platform)
        if segment_class == None:
            # Look in extensions
            segment_class = get_extension_class(options, config_path, seg_type, platform)

        if segment_class == None:
            log.write(f"fatal error: could not load segment type '{seg_type}'\n(hint: confirm your extension directory is configured correctly)", status="error")
            return 2

        segment = segment_class(segment, config_segments[i + 1], options)

        if segment_class.require_unique_name:
            if segment.name in seen_segment_names:
                segment.error("segment name is not unique")
            seen_segment_names.add(segment.name)

        ret.append(segment)

    return ret

def is_symbol_isolated(symbol, all_segments):
    if symbol in sym_isolated_map:
        return sym_isolated_map[symbol]

    relevant_segs = 0

    for segment in all_segments:
        if segment.contains_vram(symbol.vram_start):
            relevant_segs += 1
            if relevant_segs > 1:
                break

    sym_isolated_map[symbol] = relevant_segs < 2
    return sym_isolated_map[symbol]

def get_segment_symbols(segment, all_symbols, all_segments):
    seg_syms = {}
    other_syms = {}

    for symbol in all_symbols:
        if is_symbol_isolated(symbol, all_segments) and not symbol.rom:
            if segment.contains_vram(symbol.vram_start):
                if symbol.vram_start not in seg_syms:
                    seg_syms[symbol.vram_start] = []
                seg_syms[symbol.vram_start].append(symbol)
            else:
                if symbol.vram_start not in other_syms:
                    other_syms[symbol.vram_start] = []
                other_syms[symbol.vram_start].append(symbol)
        else:
            if symbol.rom and segment.contains_rom(symbol.rom):
                if symbol.vram_start not in seg_syms:
                    seg_syms[symbol.vram_start] = []
                seg_syms[symbol.vram_start].append(symbol)
            else:
                if symbol.vram_start not in other_syms:
                    other_syms[symbol.vram_start] = []
                other_syms[symbol.vram_start].append(symbol)

    return seg_syms, other_syms

def main(rom_path, config_path, repo_path, modes, verbose, ignore_cache=False):
    with open(rom_path, "rb") as f:
        rom_bytes = f.read()

    # Create main output dir
    Path(repo_path).mkdir(parents=True, exist_ok=True)

    # Load config
    with open(config_path) as f:
        config = yaml.safe_load(f.read())

    options = config.get("options")
    options["modes"] = modes
    options["verbose"] = verbose

    symbol_addrs_path = get_symbol_addrs_path(repo_path, options)
    undefined_syms_path = get_undefined_syms_path(repo_path, options)
    all_symbols = gather_symbols(symbol_addrs_path, undefined_syms_path)
    isolated_symbols = {}
    symbol_ranges = [s for s in all_symbols if s.size > 4]
    platform = get_platform(options)

    processed_segments = []
    ld_sections = []

    seg_sizes = {}
    seg_split = {}
    seg_cached = {}

    # Load cache
    cache_path = get_cache_path(repo_path, options)
    try:
        with open(cache_path, "rb") as f:
            cache = pickle.load(f)
    except Exception:
        cache = {}

    # Initialize segments
    all_segments = initialize_segments(options, config_path, config["segments"])

    for segment in all_segments:
        if platform == "n64" and type(segment) == N64SegCode: # remove special-case sometime
            segment_symbols, other_symbols = get_segment_symbols(segment, all_symbols, all_segments)
            segment.seg_symbols = segment_symbols
            segment.ext_symbols = other_symbols
            segment.all_symbols = all_symbols
            segment.symbol_ranges = symbol_ranges

        segment.check()

        tp = segment.type
        if segment.type == "bin" and segment.is_name_default():
            tp = "unk"

        if tp not in seg_sizes:
            seg_sizes[tp] = 0
            seg_split[tp] = 0
            seg_cached[tp] = 0
        seg_sizes[tp] += segment.size

        if len(segment.errors) == 0:
            if segment.should_run():
                # Check cache
                cached = segment.cache()
                if not ignore_cache and cached == cache.get(segment.unique_id()):
                    # Cache hit
                    seg_cached[tp] += 1
                else:
                    # Cache miss; split
                    cache[segment.unique_id()] = cached

                    segment.did_run = True
                    segment.split(rom_bytes, repo_path)

                    if len(segment.errors) == 0:
                        processed_segments.append(segment)

                    seg_split[tp] += 1

        log.dot(status=segment.status())
        ld_sections.append(segment.get_ld_section())

    for segment in processed_segments:
        segment.postsplit(processed_segments)
        log.dot(status=segment.status())

    # Write ldscript
    if "ld" in options["modes"] or "all" in options["modes"]:
        if verbose:
            log.write(f"saving {config['basename']}.ld")
        write_ldscript(config['basename'], repo_path, ld_sections, options)

    undefined_syms_to_write = [s for s in all_symbols if s.referenced and not s.defined and not s.type == "func"]
    undefined_funcs_to_write = [s for s in all_symbols if s.referenced and not s.defined and s.type == "func"]

    # Write undefined_funcs_auto.txt
    undefined_funcs_auto_path = get_undefined_funcs_auto_path(repo_path, options)
    if verbose:
        log.write(f"saving {undefined_funcs_auto_path}")

    to_write = undefined_funcs_to_write
    if len(to_write) > 0:
        with open(undefined_funcs_auto_path, "w", newline="\n") as f:
            for symbol in to_write:
                f.write(f"{symbol.name} = 0x{symbol.vram_start:X};\n")

    # write undefined_syms_auto.txt
    undefined_syms_auto_path = get_undefined_syms_auto_path(repo_path, options)
    if verbose:
        log.write(f"saving {undefined_syms_auto_path}")
    to_write = undefined_syms_to_write
    if len(to_write) > 0:
        with open(undefined_syms_auto_path, "w", newline="\n") as f:
            for symbol in to_write:
                f.write(f"{symbol.name} = 0x{symbol.vram_start:X};\n")

    # print warnings during split/postsplit
    for segment in all_segments:
        if len(segment.warnings) > 0:
            log.write(f"{Style.DIM}0x{segment.rom_start:06X}{Style.RESET_ALL} {segment.type} {Style.BRIGHT}{segment.name}{Style.RESET_ALL}:")

            for warn in segment.warnings:
                log.write("warning: " + warn, status="warn")

            log.write("") # empty line

    # Statistics
    unk_size = seg_sizes.get("unk", 0)
    rest_size = 0
    total_size = len(rom_bytes)

    for tp in seg_sizes:
        if tp != "unk":
            rest_size += seg_sizes[tp]

    assert(unk_size + rest_size == total_size)

    known_ratio = rest_size / total_size
    unk_ratio = unk_size / total_size

    log.write(f"Split {fmt_size(rest_size)} ({known_ratio:.2%}) in defined segments")
    for tp in seg_sizes:
        if tp != "unk":
            tmp_size = seg_sizes[tp]
            tmp_ratio = tmp_size / total_size
            log.write(f"{tp:>20}: {fmt_size(tmp_size):>8} ({tmp_ratio:.2%}) {Fore.GREEN}{seg_split[tp]} split{Style.RESET_ALL}, {Style.DIM}{seg_cached[tp]} cached")
    log.write(f"{'unknown':>20}: {fmt_size(unk_size):>8} ({unk_ratio:.2%}) from unknown bin files")

    # Save cache
    if cache != {}:
        if verbose:
            print("Writing cache")
        with open(cache_path, "wb") as f:
            pickle.dump(cache, f)

    return 0 # no error

if __name__ == "__main__":
    args = parser.parse_args()
    error_code = main(args.rom, args.config, args.outdir, args.modes, args.verbose, not args.new)
    exit(error_code)
