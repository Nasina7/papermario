.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242680_802F00
/* 802F00 80242680 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 802F04 80242684 AFB1001C */  sw        $s1, 0x1c($sp)
/* 802F08 80242688 AFBF0020 */  sw        $ra, 0x20($sp)
/* 802F0C 8024268C AFB00018 */  sw        $s0, 0x18($sp)
/* 802F10 80242690 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 802F14 80242694 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 802F18 80242698 10A00060 */  beqz      $a1, .L8024281C
/* 802F1C 8024269C 0080882D */   daddu    $s1, $a0, $zero
/* 802F20 802426A0 3C05F4AC */  lui       $a1, 0xf4ac
/* 802F24 802426A4 0C0B1EAF */  jal       get_variable
/* 802F28 802426A8 34A5D481 */   ori      $a1, $a1, 0xd481
/* 802F2C 802426AC 0220202D */  daddu     $a0, $s1, $zero
/* 802F30 802426B0 3C05F4AC */  lui       $a1, 0xf4ac
/* 802F34 802426B4 4482B000 */  mtc1      $v0, $f22
/* 802F38 802426B8 00000000 */  nop       
/* 802F3C 802426BC 4680B5A0 */  cvt.s.w   $f22, $f22
/* 802F40 802426C0 0C0B1EAF */  jal       get_variable
/* 802F44 802426C4 34A5D482 */   ori      $a1, $a1, 0xd482
/* 802F48 802426C8 0220202D */  daddu     $a0, $s1, $zero
/* 802F4C 802426CC 3C05F4AC */  lui       $a1, 0xf4ac
/* 802F50 802426D0 4482A000 */  mtc1      $v0, $f20
/* 802F54 802426D4 00000000 */  nop       
/* 802F58 802426D8 4680A520 */  cvt.s.w   $f20, $f20
/* 802F5C 802426DC 0C0B1EAF */  jal       get_variable
/* 802F60 802426E0 34A5D483 */   ori      $a1, $a1, 0xd483
/* 802F64 802426E4 44821000 */  mtc1      $v0, $f2
/* 802F68 802426E8 00000000 */  nop       
/* 802F6C 802426EC 468010A0 */  cvt.s.w   $f2, $f2
/* 802F70 802426F0 4405B000 */  mfc1      $a1, $f22
/* 802F74 802426F4 4406A000 */  mfc1      $a2, $f20
/* 802F78 802426F8 44071000 */  mfc1      $a3, $f2
/* 802F7C 802426FC 0C01C574 */  jal       func_800715D0
/* 802F80 80242700 0000202D */   daddu    $a0, $zero, $zero
/* 802F84 80242704 0220202D */  daddu     $a0, $s1, $zero
/* 802F88 80242708 3C05F4AC */  lui       $a1, 0xf4ac
/* 802F8C 8024270C 34A5D481 */  ori       $a1, $a1, 0xd481
/* 802F90 80242710 3C108026 */  lui       $s0, 0x8026
/* 802F94 80242714 26102A60 */  addiu     $s0, $s0, 0x2a60
/* 802F98 80242718 0C0B1EAF */  jal       get_variable
/* 802F9C 8024271C AE020000 */   sw       $v0, ($s0)
/* 802FA0 80242720 0220202D */  daddu     $a0, $s1, $zero
/* 802FA4 80242724 3C05F4AC */  lui       $a1, 0xf4ac
/* 802FA8 80242728 4482B000 */  mtc1      $v0, $f22
/* 802FAC 8024272C 00000000 */  nop       
/* 802FB0 80242730 4680B5A0 */  cvt.s.w   $f22, $f22
/* 802FB4 80242734 0C0B1EAF */  jal       get_variable
/* 802FB8 80242738 34A5D482 */   ori      $a1, $a1, 0xd482
/* 802FBC 8024273C 0220202D */  daddu     $a0, $s1, $zero
/* 802FC0 80242740 3C05F4AC */  lui       $a1, 0xf4ac
/* 802FC4 80242744 4482A000 */  mtc1      $v0, $f20
/* 802FC8 80242748 00000000 */  nop       
/* 802FCC 8024274C 4680A520 */  cvt.s.w   $f20, $f20
/* 802FD0 80242750 0C0B1EAF */  jal       get_variable
/* 802FD4 80242754 34A5D483 */   ori      $a1, $a1, 0xd483
/* 802FD8 80242758 44821000 */  mtc1      $v0, $f2
/* 802FDC 8024275C 00000000 */  nop       
/* 802FE0 80242760 468010A0 */  cvt.s.w   $f2, $f2
/* 802FE4 80242764 4405B000 */  mfc1      $a1, $f22
/* 802FE8 80242768 4406A000 */  mfc1      $a2, $f20
/* 802FEC 8024276C 44071000 */  mfc1      $a3, $f2
/* 802FF0 80242770 0C01C604 */  jal       func_80071810
/* 802FF4 80242774 0000202D */   daddu    $a0, $zero, $zero
/* 802FF8 80242778 0220202D */  daddu     $a0, $s1, $zero
/* 802FFC 8024277C 3C05F4AC */  lui       $a1, 0xf4ac
/* 803000 80242780 3C018026 */  lui       $at, 0x8026
/* 803004 80242784 AC222A64 */  sw        $v0, 0x2a64($at)
/* 803008 80242788 0C0B1EAF */  jal       get_variable
/* 80300C 8024278C 34A5D481 */   ori      $a1, $a1, 0xd481
/* 803010 80242790 0220202D */  daddu     $a0, $s1, $zero
/* 803014 80242794 3C05F4AC */  lui       $a1, 0xf4ac
/* 803018 80242798 4482B000 */  mtc1      $v0, $f22
/* 80301C 8024279C 00000000 */  nop       
/* 803020 802427A0 4680B5A0 */  cvt.s.w   $f22, $f22
/* 803024 802427A4 0C0B1EAF */  jal       get_variable
/* 803028 802427A8 34A5D482 */   ori      $a1, $a1, 0xd482
/* 80302C 802427AC 0220202D */  daddu     $a0, $s1, $zero
/* 803030 802427B0 3C05F4AC */  lui       $a1, 0xf4ac
/* 803034 802427B4 4482A000 */  mtc1      $v0, $f20
/* 803038 802427B8 00000000 */  nop       
/* 80303C 802427BC 4680A520 */  cvt.s.w   $f20, $f20
/* 803040 802427C0 0C0B1EAF */  jal       get_variable
/* 803044 802427C4 34A5D483 */   ori      $a1, $a1, 0xd483
/* 803048 802427C8 44821000 */  mtc1      $v0, $f2
/* 80304C 802427CC 00000000 */  nop       
/* 803050 802427D0 468010A0 */  cvt.s.w   $f2, $f2
/* 803054 802427D4 4405B000 */  mfc1      $a1, $f22
/* 803058 802427D8 4406A000 */  mfc1      $a2, $f20
/* 80305C 802427DC 3C013F80 */  lui       $at, 0x3f80
/* 803060 802427E0 44810000 */  mtc1      $at, $f0
/* 803064 802427E4 44071000 */  mfc1      $a3, $f2
/* 803068 802427E8 0000202D */  daddu     $a0, $zero, $zero
/* 80306C 802427EC AFA00014 */  sw        $zero, 0x14($sp)
/* 803070 802427F0 0C01CA24 */  jal       func_80072890
/* 803074 802427F4 E7A00010 */   swc1     $f0, 0x10($sp)
/* 803078 802427F8 8E030000 */  lw        $v1, ($s0)
/* 80307C 802427FC 8C64000C */  lw        $a0, 0xc($v1)
/* 803080 80242800 3C018026 */  lui       $at, 0x8026
/* 803084 80242804 AC222A68 */  sw        $v0, 0x2a68($at)
/* 803088 80242808 AC800018 */  sw        $zero, 0x18($a0)
/* 80308C 8024280C AC800020 */  sw        $zero, 0x20($a0)
/* 803090 80242810 AC800024 */  sw        $zero, 0x24($a0)
/* 803094 80242814 AC800028 */  sw        $zero, 0x28($a0)
/* 803098 80242818 AC80001C */  sw        $zero, 0x1c($a0)
.L8024281C:
/* 80309C 8024281C 3C028026 */  lui       $v0, 0x8026
/* 8030A0 80242820 8C422A60 */  lw        $v0, 0x2a60($v0)
/* 8030A4 80242824 8C44000C */  lw        $a0, 0xc($v0)
/* 8030A8 80242828 8C820020 */  lw        $v0, 0x20($a0)
/* 8030AC 8024282C 8C830028 */  lw        $v1, 0x28($a0)
/* 8030B0 80242830 2442000A */  addiu     $v0, $v0, 0xa
/* 8030B4 80242834 AC820020 */  sw        $v0, 0x20($a0)
/* 8030B8 80242838 8C820024 */  lw        $v0, 0x24($a0)
/* 8030BC 8024283C 2463000A */  addiu     $v1, $v1, 0xa
/* 8030C0 80242840 AC830028 */  sw        $v1, 0x28($a0)
/* 8030C4 80242844 8C830018 */  lw        $v1, 0x18($a0)
/* 8030C8 80242848 2442000A */  addiu     $v0, $v0, 0xa
/* 8030CC 8024284C AC820024 */  sw        $v0, 0x24($a0)
/* 8030D0 80242850 8C82001C */  lw        $v0, 0x1c($a0)
/* 8030D4 80242854 2463000A */  addiu     $v1, $v1, 0xa
/* 8030D8 80242858 AC830018 */  sw        $v1, 0x18($a0)
/* 8030DC 8024285C 286300FF */  slti      $v1, $v1, 0xff
/* 8030E0 80242860 2442000A */  addiu     $v0, $v0, 0xa
/* 8030E4 80242864 AC82001C */  sw        $v0, 0x1c($a0)
/* 8030E8 80242868 14600004 */  bnez      $v1, .L8024287C
/* 8030EC 8024286C 0000102D */   daddu    $v0, $zero, $zero
/* 8030F0 80242870 240200FF */  addiu     $v0, $zero, 0xff
/* 8030F4 80242874 AC820018 */  sw        $v0, 0x18($a0)
/* 8030F8 80242878 24020002 */  addiu     $v0, $zero, 2
.L8024287C:
/* 8030FC 8024287C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 803100 80242880 8FB1001C */  lw        $s1, 0x1c($sp)
/* 803104 80242884 8FB00018 */  lw        $s0, 0x18($sp)
/* 803108 80242888 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 80310C 8024288C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 803110 80242890 03E00008 */  jr        $ra
/* 803114 80242894 27BD0038 */   addiu    $sp, $sp, 0x38
