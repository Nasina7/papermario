.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024111C_96A2DC
/* 96A2DC 8024111C 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 96A2E0 80241120 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 96A2E4 80241124 10A00002 */  beqz      $a1, .L80241130
/* 96A2E8 80241128 2402003C */   addiu    $v0, $zero, 0x3c
/* 96A2EC 8024112C AC820070 */  sw        $v0, 0x70($a0)
.L80241130:
/* 96A2F0 80241130 C4620080 */  lwc1      $f2, 0x80($v1)
/* 96A2F4 80241134 3C0141F0 */  lui       $at, 0x41f0
/* 96A2F8 80241138 44810000 */  mtc1      $at, $f0
/* 96A2FC 8024113C 00000000 */  nop       
/* 96A300 80241140 46001000 */  add.s     $f0, $f2, $f0
/* 96A304 80241144 3C0143B4 */  lui       $at, 0x43b4
/* 96A308 80241148 44811000 */  mtc1      $at, $f2
/* 96A30C 8024114C 00000000 */  nop       
/* 96A310 80241150 4600103E */  c.le.s    $f2, $f0
/* 96A314 80241154 00000000 */  nop       
/* 96A318 80241158 45000003 */  bc1f      .L80241168
/* 96A31C 8024115C E4600080 */   swc1     $f0, 0x80($v1)
/* 96A320 80241160 46020001 */  sub.s     $f0, $f0, $f2
/* 96A324 80241164 E4600080 */  swc1      $f0, 0x80($v1)
.L80241168:
/* 96A328 80241168 8C820070 */  lw        $v0, 0x70($a0)
/* 96A32C 8024116C 2442FFFF */  addiu     $v0, $v0, -1
/* 96A330 80241170 AC820070 */  sw        $v0, 0x70($a0)
/* 96A334 80241174 000217C3 */  sra       $v0, $v0, 0x1f
/* 96A338 80241178 03E00008 */  jr        $ra
/* 96A33C 8024117C 30420002 */   andi     $v0, $v0, 2
