.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240768_919318
/* 919318 80240768 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 91931C 8024076C AFB10014 */  sw        $s1, 0x14($sp)
/* 919320 80240770 0080882D */  daddu     $s1, $a0, $zero
/* 919324 80240774 AFBF001C */  sw        $ra, 0x1c($sp)
/* 919328 80240778 AFB20018 */  sw        $s2, 0x18($sp)
/* 91932C 8024077C AFB00010 */  sw        $s0, 0x10($sp)
/* 919330 80240780 8E320148 */  lw        $s2, 0x148($s1)
/* 919334 80240784 0C00EABB */  jal       get_npc_unsafe
/* 919338 80240788 86440008 */   lh       $a0, 8($s2)
/* 91933C 8024078C 240400B4 */  addiu     $a0, $zero, 0xb4
/* 919340 80240790 0C00A67F */  jal       rand_int
/* 919344 80240794 0040802D */   daddu    $s0, $v0, $zero
/* 919348 80240798 C60C000C */  lwc1      $f12, 0xc($s0)
/* 91934C 8024079C 44820000 */  mtc1      $v0, $f0
/* 919350 802407A0 00000000 */  nop       
/* 919354 802407A4 46800020 */  cvt.s.w   $f0, $f0
/* 919358 802407A8 46006300 */  add.s     $f12, $f12, $f0
/* 91935C 802407AC 3C0142B4 */  lui       $at, 0x42b4
/* 919360 802407B0 44810000 */  mtc1      $at, $f0
/* 919364 802407B4 0C00A6C9 */  jal       clamp_angle
/* 919368 802407B8 46006301 */   sub.s    $f12, $f12, $f0
/* 91936C 802407BC E600000C */  swc1      $f0, 0xc($s0)
/* 919370 802407C0 8E4200CC */  lw        $v0, 0xcc($s2)
/* 919374 802407C4 8C420000 */  lw        $v0, ($v0)
/* 919378 802407C8 240403E8 */  addiu     $a0, $zero, 0x3e8
/* 91937C 802407CC 0C00A67F */  jal       rand_int
/* 919380 802407D0 AE020028 */   sw       $v0, 0x28($s0)
/* 919384 802407D4 00021FC2 */  srl       $v1, $v0, 0x1f
/* 919388 802407D8 00431821 */  addu      $v1, $v0, $v1
/* 91938C 802407DC 00031843 */  sra       $v1, $v1, 1
/* 919390 802407E0 00031840 */  sll       $v1, $v1, 1
/* 919394 802407E4 00431023 */  subu      $v0, $v0, $v1
/* 919398 802407E8 24420002 */  addiu     $v0, $v0, 2
/* 91939C 802407EC AE220074 */  sw        $v0, 0x74($s1)
/* 9193A0 802407F0 24020005 */  addiu     $v0, $zero, 5
/* 9193A4 802407F4 AE220070 */  sw        $v0, 0x70($s1)
/* 9193A8 802407F8 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9193AC 802407FC 8FB20018 */  lw        $s2, 0x18($sp)
/* 9193B0 80240800 8FB10014 */  lw        $s1, 0x14($sp)
/* 9193B4 80240804 8FB00010 */  lw        $s0, 0x10($sp)
/* 9193B8 80240808 03E00008 */  jr        $ra
/* 9193BC 8024080C 27BD0020 */   addiu    $sp, $sp, 0x20
