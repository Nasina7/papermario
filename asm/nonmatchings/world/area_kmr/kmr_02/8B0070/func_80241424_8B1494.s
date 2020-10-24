.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241424_8B1494
/* 8B1494 80241424 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 8B1498 80241428 AFB00010 */  sw        $s0, 0x10($sp)
/* 8B149C 8024142C 0080802D */  daddu     $s0, $a0, $zero
/* 8B14A0 80241430 AFBF001C */  sw        $ra, 0x1c($sp)
/* 8B14A4 80241434 AFB20018 */  sw        $s2, 0x18($sp)
/* 8B14A8 80241438 AFB10014 */  sw        $s1, 0x14($sp)
/* 8B14AC 8024143C 8E110148 */  lw        $s1, 0x148($s0)
/* 8B14B0 80241440 86240008 */  lh        $a0, 8($s1)
/* 8B14B4 80241444 0C00EABB */  jal       get_npc_unsafe
/* 8B14B8 80241448 00A0902D */   daddu    $s2, $a1, $zero
/* 8B14BC 8024144C 8E2300CC */  lw        $v1, 0xcc($s1)
/* 8B14C0 80241450 0040202D */  daddu     $a0, $v0, $zero
/* 8B14C4 80241454 8C630000 */  lw        $v1, ($v1)
/* 8B14C8 80241458 24020001 */  addiu     $v0, $zero, 1
/* 8B14CC 8024145C AC830028 */  sw        $v1, 0x28($a0)
/* 8B14D0 80241460 AE020070 */  sw        $v0, 0x70($s0)
/* 8B14D4 80241464 8E220000 */  lw        $v0, ($s1)
/* 8B14D8 80241468 3C030010 */  lui       $v1, 0x10
/* 8B14DC 8024146C 00431024 */  and       $v0, $v0, $v1
/* 8B14E0 80241470 10400004 */  beqz      $v0, .L80241484
/* 8B14E4 80241474 00000000 */   nop      
/* 8B14E8 80241478 C620006C */  lwc1      $f0, 0x6c($s1)
/* 8B14EC 8024147C 46800020 */  cvt.s.w   $f0, $f0
/* 8B14F0 80241480 E480000C */  swc1      $f0, 0xc($a0)
.L80241484:
/* 8B14F4 80241484 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8B14F8 80241488 8C420014 */  lw        $v0, 0x14($v0)
/* 8B14FC 8024148C 1C400004 */  bgtz      $v0, .L802414A0
/* 8B1500 80241490 00000000 */   nop      
/* 8B1504 80241494 C640000C */  lwc1      $f0, 0xc($s2)
/* 8B1508 80241498 08090530 */  j         .L802414C0
/* 8B150C 8024149C E4800018 */   swc1     $f0, 0x18($a0)
.L802414A0:
/* 8B1510 802414A0 3C018025 */  lui       $at, 0x8025
/* 8B1514 802414A4 D4227D40 */  ldc1      $f2, 0x7d40($at)
/* 8B1518 802414A8 44820000 */  mtc1      $v0, $f0
/* 8B151C 802414AC 00000000 */  nop       
/* 8B1520 802414B0 46800021 */  cvt.d.w   $f0, $f0
/* 8B1524 802414B4 46220003 */  div.d     $f0, $f0, $f2
/* 8B1528 802414B8 46200020 */  cvt.s.d   $f0, $f0
/* 8B152C 802414BC E4800018 */  swc1      $f0, 0x18($a0)
.L802414C0:
/* 8B1530 802414C0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 8B1534 802414C4 8FB20018 */  lw        $s2, 0x18($sp)
/* 8B1538 802414C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 8B153C 802414CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 8B1540 802414D0 03E00008 */  jr        $ra
/* 8B1544 802414D4 27BD0020 */   addiu    $sp, $sp, 0x20
