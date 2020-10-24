.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240930_823BF0
/* 823BF0 80240930 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 823BF4 80240934 AFB50024 */  sw        $s5, 0x24($sp)
/* 823BF8 80240938 0080A82D */  daddu     $s5, $a0, $zero
/* 823BFC 8024093C AFBF002C */  sw        $ra, 0x2c($sp)
/* 823C00 80240940 AFB60028 */  sw        $s6, 0x28($sp)
/* 823C04 80240944 AFB40020 */  sw        $s4, 0x20($sp)
/* 823C08 80240948 AFB3001C */  sw        $s3, 0x1c($sp)
/* 823C0C 8024094C AFB20018 */  sw        $s2, 0x18($sp)
/* 823C10 80240950 AFB10014 */  sw        $s1, 0x14($sp)
/* 823C14 80240954 AFB00010 */  sw        $s0, 0x10($sp)
/* 823C18 80240958 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 823C1C 8024095C F7B60038 */  sdc1      $f22, 0x38($sp)
/* 823C20 80240960 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 823C24 80240964 8EB30148 */  lw        $s3, 0x148($s5)
/* 823C28 80240968 86640008 */  lh        $a0, 8($s3)
/* 823C2C 8024096C 0C00EABB */  jal       get_npc_unsafe
/* 823C30 80240970 00A0B02D */   daddu    $s6, $a1, $zero
/* 823C34 80240974 0040A02D */  daddu     $s4, $v0, $zero
/* 823C38 80240978 AEA00074 */  sw        $zero, 0x74($s5)
/* 823C3C 8024097C C6980038 */  lwc1      $f24, 0x38($s4)
/* 823C40 80240980 C6960040 */  lwc1      $f22, 0x40($s4)
/* 823C44 80240984 0000902D */  daddu     $s2, $zero, $zero
/* 823C48 80240988 AEA00078 */  sw        $zero, 0x78($s5)
/* 823C4C 8024098C 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 823C50 80240990 8C620000 */  lw        $v0, ($v1)
/* 823C54 80240994 3C0146FF */  lui       $at, 0x46ff
/* 823C58 80240998 3421FE00 */  ori       $at, $at, 0xfe00
/* 823C5C 8024099C 4481A000 */  mtc1      $at, $f20
/* 823C60 802409A0 18400018 */  blez      $v0, .L80240A04
/* 823C64 802409A4 0240802D */   daddu    $s0, $s2, $zero
/* 823C68 802409A8 0240882D */  daddu     $s1, $s2, $zero
.L802409AC:
/* 823C6C 802409AC 02231021 */  addu      $v0, $s1, $v1
/* 823C70 802409B0 4600C306 */  mov.s     $f12, $f24
/* 823C74 802409B4 C4440004 */  lwc1      $f4, 4($v0)
/* 823C78 802409B8 46802120 */  cvt.s.w   $f4, $f4
/* 823C7C 802409BC 44062000 */  mfc1      $a2, $f4
/* 823C80 802409C0 C444000C */  lwc1      $f4, 0xc($v0)
/* 823C84 802409C4 46802120 */  cvt.s.w   $f4, $f4
/* 823C88 802409C8 44072000 */  mfc1      $a3, $f4
/* 823C8C 802409CC 0C00A7B5 */  jal       dist2D
/* 823C90 802409D0 4600B386 */   mov.s    $f14, $f22
/* 823C94 802409D4 4614003C */  c.lt.s    $f0, $f20
/* 823C98 802409D8 00000000 */  nop       
/* 823C9C 802409DC 45000003 */  bc1f      .L802409EC
/* 823CA0 802409E0 2631000C */   addiu    $s1, $s1, 0xc
/* 823CA4 802409E4 46000506 */  mov.s     $f20, $f0
/* 823CA8 802409E8 AEB20078 */  sw        $s2, 0x78($s5)
.L802409EC:
/* 823CAC 802409EC 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 823CB0 802409F0 26100001 */  addiu     $s0, $s0, 1
/* 823CB4 802409F4 8C620000 */  lw        $v0, ($v1)
/* 823CB8 802409F8 0202102A */  slt       $v0, $s0, $v0
/* 823CBC 802409FC 1440FFEB */  bnez      $v0, .L802409AC
/* 823CC0 80240A00 26520001 */   addiu    $s2, $s2, 1
.L80240A04:
/* 823CC4 80240A04 8E6200CC */  lw        $v0, 0xcc($s3)
/* 823CC8 80240A08 8C420004 */  lw        $v0, 4($v0)
/* 823CCC 80240A0C AE820028 */  sw        $v0, 0x28($s4)
/* 823CD0 80240A10 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 823CD4 80240A14 8C42007C */  lw        $v0, 0x7c($v0)
/* 823CD8 80240A18 04410004 */  bgez      $v0, .L80240A2C
/* 823CDC 80240A1C 00000000 */   nop      
/* 823CE0 80240A20 C6C00000 */  lwc1      $f0, ($s6)
/* 823CE4 80240A24 08090293 */  j         .L80240A4C
/* 823CE8 80240A28 E6800018 */   swc1     $f0, 0x18($s4)
.L80240A2C:
/* 823CEC 80240A2C 3C018025 */  lui       $at, 0x8025
/* 823CF0 80240A30 D422E200 */  ldc1      $f2, -0x1e00($at)
/* 823CF4 80240A34 44820000 */  mtc1      $v0, $f0
/* 823CF8 80240A38 00000000 */  nop       
/* 823CFC 80240A3C 46800021 */  cvt.d.w   $f0, $f0
/* 823D00 80240A40 46220003 */  div.d     $f0, $f0, $f2
/* 823D04 80240A44 46200020 */  cvt.s.d   $f0, $f0
/* 823D08 80240A48 E6800018 */  swc1      $f0, 0x18($s4)
.L80240A4C:
/* 823D0C 80240A4C 24020001 */  addiu     $v0, $zero, 1
/* 823D10 80240A50 AEA20070 */  sw        $v0, 0x70($s5)
/* 823D14 80240A54 8FBF002C */  lw        $ra, 0x2c($sp)
/* 823D18 80240A58 8FB60028 */  lw        $s6, 0x28($sp)
/* 823D1C 80240A5C 8FB50024 */  lw        $s5, 0x24($sp)
/* 823D20 80240A60 8FB40020 */  lw        $s4, 0x20($sp)
/* 823D24 80240A64 8FB3001C */  lw        $s3, 0x1c($sp)
/* 823D28 80240A68 8FB20018 */  lw        $s2, 0x18($sp)
/* 823D2C 80240A6C 8FB10014 */  lw        $s1, 0x14($sp)
/* 823D30 80240A70 8FB00010 */  lw        $s0, 0x10($sp)
/* 823D34 80240A74 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 823D38 80240A78 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 823D3C 80240A7C D7B40030 */  ldc1      $f20, 0x30($sp)
/* 823D40 80240A80 03E00008 */  jr        $ra
/* 823D44 80240A84 27BD0048 */   addiu    $sp, $sp, 0x48
