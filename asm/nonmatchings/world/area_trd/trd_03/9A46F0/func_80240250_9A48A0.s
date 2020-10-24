.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240250_9A48A0
/* 9A48A0 80240250 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9A48A4 80240254 AFB3003C */  sw        $s3, 0x3c($sp)
/* 9A48A8 80240258 0080982D */  daddu     $s3, $a0, $zero
/* 9A48AC 8024025C AFBF0040 */  sw        $ra, 0x40($sp)
/* 9A48B0 80240260 AFB20038 */  sw        $s2, 0x38($sp)
/* 9A48B4 80240264 AFB10034 */  sw        $s1, 0x34($sp)
/* 9A48B8 80240268 AFB00030 */  sw        $s0, 0x30($sp)
/* 9A48BC 8024026C 8E710148 */  lw        $s1, 0x148($s3)
/* 9A48C0 80240270 0C00EABB */  jal       get_npc_unsafe
/* 9A48C4 80240274 86240008 */   lh       $a0, 8($s1)
/* 9A48C8 80240278 0040802D */  daddu     $s0, $v0, $zero
/* 9A48CC 8024027C 8E22007C */  lw        $v0, 0x7c($s1)
/* 9A48D0 80240280 8603008E */  lh        $v1, 0x8e($s0)
/* 9A48D4 80240284 2442FFFF */  addiu     $v0, $v0, -1
/* 9A48D8 80240288 14620012 */  bne       $v1, $v0, .L802402D4
/* 9A48DC 8024028C 00000000 */   nop      
/* 9A48E0 80240290 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9A48E4 80240294 4600020D */  trunc.w.s $f8, $f0
/* 9A48E8 80240298 44024000 */  mfc1      $v0, $f8
/* 9A48EC 8024029C 00000000 */  nop       
/* 9A48F0 802402A0 A6220010 */  sh        $v0, 0x10($s1)
/* 9A48F4 802402A4 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9A48F8 802402A8 4600020D */  trunc.w.s $f8, $f0
/* 9A48FC 802402AC 44024000 */  mfc1      $v0, $f8
/* 9A4900 802402B0 00000000 */  nop       
/* 9A4904 802402B4 A6220012 */  sh        $v0, 0x12($s1)
/* 9A4908 802402B8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9A490C 802402BC 24020001 */  addiu     $v0, $zero, 1
/* 9A4910 802402C0 A2220007 */  sb        $v0, 7($s1)
/* 9A4914 802402C4 4600020D */  trunc.w.s $f8, $f0
/* 9A4918 802402C8 44024000 */  mfc1      $v0, $f8
/* 9A491C 802402CC 00000000 */  nop       
/* 9A4920 802402D0 A6220014 */  sh        $v0, 0x14($s1)
.L802402D4:
/* 9A4924 802402D4 C6000038 */  lwc1      $f0, 0x38($s0)
/* 9A4928 802402D8 C602003C */  lwc1      $f2, 0x3c($s0)
/* 9A492C 802402DC C6040040 */  lwc1      $f4, 0x40($s0)
/* 9A4930 802402E0 C6060018 */  lwc1      $f6, 0x18($s0)
/* 9A4934 802402E4 E7A00020 */  swc1      $f0, 0x20($sp)
/* 9A4938 802402E8 E7A20024 */  swc1      $f2, 0x24($sp)
/* 9A493C 802402EC E7A40028 */  swc1      $f4, 0x28($sp)
/* 9A4940 802402F0 E7A60010 */  swc1      $f6, 0x10($sp)
/* 9A4944 802402F4 C600000C */  lwc1      $f0, 0xc($s0)
/* 9A4948 802402F8 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9A494C 802402FC 860200A8 */  lh        $v0, 0xa8($s0)
/* 9A4950 80240300 27A50020 */  addiu     $a1, $sp, 0x20
/* 9A4954 80240304 44820000 */  mtc1      $v0, $f0
/* 9A4958 80240308 00000000 */  nop       
/* 9A495C 8024030C 46800020 */  cvt.s.w   $f0, $f0
/* 9A4960 80240310 E7A00018 */  swc1      $f0, 0x18($sp)
/* 9A4964 80240314 860200A6 */  lh        $v0, 0xa6($s0)
/* 9A4968 80240318 27A60024 */  addiu     $a2, $sp, 0x24
/* 9A496C 8024031C 44820000 */  mtc1      $v0, $f0
/* 9A4970 80240320 00000000 */  nop       
/* 9A4974 80240324 46800020 */  cvt.s.w   $f0, $f0
/* 9A4978 80240328 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 9A497C 8024032C 8E040080 */  lw        $a0, 0x80($s0)
/* 9A4980 80240330 0C037711 */  jal       func_800DDC44
/* 9A4984 80240334 27A70028 */   addiu    $a3, $sp, 0x28
/* 9A4988 80240338 0040902D */  daddu     $s2, $v0, $zero
/* 9A498C 8024033C 16400005 */  bnez      $s2, .L80240354
/* 9A4990 80240340 00000000 */   nop      
/* 9A4994 80240344 8E050018 */  lw        $a1, 0x18($s0)
/* 9A4998 80240348 8E06000C */  lw        $a2, 0xc($s0)
/* 9A499C 8024034C 0C00EA95 */  jal       npc_move_heading
/* 9A49A0 80240350 0200202D */   daddu    $a0, $s0, $zero
.L80240354:
/* 9A49A4 80240354 8602008E */  lh        $v0, 0x8e($s0)
/* 9A49A8 80240358 9603008E */  lhu       $v1, 0x8e($s0)
/* 9A49AC 8024035C 18400007 */  blez      $v0, .L8024037C
/* 9A49B0 80240360 2462FFFF */   addiu    $v0, $v1, -1
/* 9A49B4 80240364 A602008E */  sh        $v0, 0x8e($s0)
/* 9A49B8 80240368 00021400 */  sll       $v0, $v0, 0x10
/* 9A49BC 8024036C 18400003 */  blez      $v0, .L8024037C
/* 9A49C0 80240370 00000000 */   nop      
/* 9A49C4 80240374 12400008 */  beqz      $s2, .L80240398
/* 9A49C8 80240378 00000000 */   nop      
.L8024037C:
/* 9A49CC 8024037C 8E2200CC */  lw        $v0, 0xcc($s1)
/* 9A49D0 80240380 A2200007 */  sb        $zero, 7($s1)
/* 9A49D4 80240384 8C420028 */  lw        $v0, 0x28($v0)
/* 9A49D8 80240388 A600008E */  sh        $zero, 0x8e($s0)
/* 9A49DC 8024038C AE020028 */  sw        $v0, 0x28($s0)
/* 9A49E0 80240390 2402000F */  addiu     $v0, $zero, 0xf
/* 9A49E4 80240394 AE620070 */  sw        $v0, 0x70($s3)
.L80240398:
/* 9A49E8 80240398 8FBF0040 */  lw        $ra, 0x40($sp)
/* 9A49EC 8024039C 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9A49F0 802403A0 8FB20038 */  lw        $s2, 0x38($sp)
/* 9A49F4 802403A4 8FB10034 */  lw        $s1, 0x34($sp)
/* 9A49F8 802403A8 8FB00030 */  lw        $s0, 0x30($sp)
/* 9A49FC 802403AC 03E00008 */  jr        $ra
/* 9A4A00 802403B0 27BD0048 */   addiu    $sp, $sp, 0x48
