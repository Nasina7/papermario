.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242540_C826E0
/* C826E0 80242540 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C826E4 80242544 AFB00010 */  sw        $s0, 0x10($sp)
/* C826E8 80242548 0080802D */  daddu     $s0, $a0, $zero
/* C826EC 8024254C 24020001 */  addiu     $v0, $zero, 1
/* C826F0 80242550 10A20019 */  beq       $a1, $v0, .L802425B8
/* C826F4 80242554 AFBF0014 */   sw       $ra, 0x14($sp)
/* C826F8 80242558 28A20002 */  slti      $v0, $a1, 2
/* C826FC 8024255C 50400005 */  beql      $v0, $zero, .L80242574
/* C82700 80242560 24020002 */   addiu    $v0, $zero, 2
/* C82704 80242564 10A00007 */  beqz      $a1, .L80242584
/* C82708 80242568 00000000 */   nop
/* C8270C 8024256C 08090993 */  j         .L8024264C
/* C82710 80242570 00000000 */   nop
.L80242574:
/* C82714 80242574 10A20028 */  beq       $a1, $v0, .L80242618
/* C82718 80242578 00000000 */   nop
/* C8271C 8024257C 08090993 */  j         .L8024264C
/* C82720 80242580 00000000 */   nop
.L80242584:
/* C82724 80242584 8E020000 */  lw        $v0, ($s0)
/* C82728 80242588 30420002 */  andi      $v0, $v0, 2
/* C8272C 8024258C 1040002F */  beqz      $v0, .L8024264C
/* C82730 80242590 00000000 */   nop
/* C82734 80242594 C6000010 */  lwc1      $f0, 0x10($s0)
/* C82738 80242598 3C013F73 */  lui       $at, 0x3f73
/* C8273C 8024259C 34213333 */  ori       $at, $at, 0x3333
/* C82740 802425A0 44811000 */  mtc1      $at, $f2
/* C82744 802425A4 00000000 */  nop
/* C82748 802425A8 46020002 */  mul.s     $f0, $f0, $f2
/* C8274C 802425AC 00000000 */  nop
/* C82750 802425B0 08090993 */  j         .L8024264C
/* C82754 802425B4 E6000010 */   swc1     $f0, 0x10($s0)
.L802425B8:
/* C82758 802425B8 C6000010 */  lwc1      $f0, 0x10($s0)
/* C8275C 802425BC 3C013F8F */  lui       $at, 0x3f8f
/* C82760 802425C0 34215C29 */  ori       $at, $at, 0x5c29
/* C82764 802425C4 44811000 */  mtc1      $at, $f2
/* C82768 802425C8 00000000 */  nop
/* C8276C 802425CC 46020002 */  mul.s     $f0, $f0, $f2
/* C82770 802425D0 00000000 */  nop
/* C82774 802425D4 8E030020 */  lw        $v1, 0x20($s0)
/* C82778 802425D8 2402000A */  addiu     $v0, $zero, 0xa
/* C8277C 802425DC 1462001B */  bne       $v1, $v0, .L8024264C
/* C82780 802425E0 E6000010 */   swc1     $f0, 0x10($s0)
/* C82784 802425E4 3C048024 */  lui       $a0, %hi(D_802437E0_C83980)
/* C82788 802425E8 248437E0 */  addiu     $a0, $a0, %lo(D_802437E0_C83980)
/* C8278C 802425EC 24050001 */  addiu     $a1, $zero, 1
/* C82790 802425F0 0C0B0CF8 */  jal       start_script
/* C82794 802425F4 0000302D */   daddu    $a2, $zero, $zero
/* C82798 802425F8 8E030014 */  lw        $v1, 0x14($s0)
/* C8279C 802425FC AC430084 */  sw        $v1, 0x84($v0)
/* C827A0 80242600 8E030018 */  lw        $v1, 0x18($s0)
/* C827A4 80242604 AC430088 */  sw        $v1, 0x88($v0)
/* C827A8 80242608 8E020000 */  lw        $v0, ($s0)
/* C827AC 8024260C 34420002 */  ori       $v0, $v0, 2
/* C827B0 80242610 08090993 */  j         .L8024264C
/* C827B4 80242614 AE020000 */   sw       $v0, ($s0)
.L80242618:
/* C827B8 80242618 C60C0010 */  lwc1      $f12, 0x10($s0)
/* C827BC 8024261C 0C00A69F */  jal       signF
/* C827C0 80242620 46006307 */   neg.s    $f12, $f12
/* C827C4 80242624 8E02002C */  lw        $v0, 0x2c($s0)
/* C827C8 80242628 8C42000C */  lw        $v0, 0xc($v0)
/* C827CC 8024262C 04420001 */  bltzl     $v0, .L80242634
/* C827D0 80242630 00021023 */   negu     $v0, $v0
.L80242634:
/* C827D4 80242634 44821000 */  mtc1      $v0, $f2
/* C827D8 80242638 00000000 */  nop
/* C827DC 8024263C 468010A0 */  cvt.s.w   $f2, $f2
/* C827E0 80242640 46001082 */  mul.s     $f2, $f2, $f0
/* C827E4 80242644 00000000 */  nop
/* C827E8 80242648 E6020010 */  swc1      $f2, 0x10($s0)
.L8024264C:
/* C827EC 8024264C 8FBF0014 */  lw        $ra, 0x14($sp)
/* C827F0 80242650 8FB00010 */  lw        $s0, 0x10($sp)
/* C827F4 80242654 03E00008 */  jr        $ra
/* C827F8 80242658 27BD0018 */   addiu    $sp, $sp, 0x18
/* C827FC 8024265C 00000000 */  nop
