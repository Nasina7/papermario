.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_802471E8_C67EF8
.word L80240AB0_C617C0, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240AB0_C617C0, L80240ABC_C617CC, L80240AB0_C617C0, L80240ABC_C617CC, L80240AB0_C617C0, L80240ABC_C617CC, L80240AB0_C617C0, L80240ABC_C617CC, L80240ABC_C617CC, L80240ABC_C617CC, L80240AB0_C617C0, L80240ABC_C617CC, L80240AB0_C617C0, 0

.section .text

glabel func_802406A4_C613B4
/* C613B4 802406A4 27BDFF90 */  addiu     $sp, $sp, -0x70
/* C613B8 802406A8 AFB3005C */  sw        $s3, 0x5c($sp)
/* C613BC 802406AC 0080982D */  daddu     $s3, $a0, $zero
/* C613C0 802406B0 AFBF0068 */  sw        $ra, 0x68($sp)
/* C613C4 802406B4 AFB50064 */  sw        $s5, 0x64($sp)
/* C613C8 802406B8 AFB40060 */  sw        $s4, 0x60($sp)
/* C613CC 802406BC AFB20058 */  sw        $s2, 0x58($sp)
/* C613D0 802406C0 AFB10054 */  sw        $s1, 0x54($sp)
/* C613D4 802406C4 AFB00050 */  sw        $s0, 0x50($sp)
/* C613D8 802406C8 8E710148 */  lw        $s1, 0x148($s3)
/* C613DC 802406CC 86240008 */  lh        $a0, 8($s1)
/* C613E0 802406D0 0C00EABB */  jal       get_npc_unsafe
/* C613E4 802406D4 00A0802D */   daddu    $s0, $a1, $zero
/* C613E8 802406D8 8E63000C */  lw        $v1, 0xc($s3)
/* C613EC 802406DC 0260202D */  daddu     $a0, $s3, $zero
/* C613F0 802406E0 8C650000 */  lw        $a1, ($v1)
/* C613F4 802406E4 0C0B1EAF */  jal       evt_get_variable
/* C613F8 802406E8 0040902D */   daddu    $s2, $v0, $zero
/* C613FC 802406EC AFA00028 */  sw        $zero, 0x28($sp)
/* C61400 802406F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C61404 802406F4 8C630030 */  lw        $v1, 0x30($v1)
/* C61408 802406F8 AFA3002C */  sw        $v1, 0x2c($sp)
/* C6140C 802406FC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C61410 80240700 8C63001C */  lw        $v1, 0x1c($v1)
/* C61414 80240704 AFA30030 */  sw        $v1, 0x30($sp)
/* C61418 80240708 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C6141C 8024070C 8C630024 */  lw        $v1, 0x24($v1)
/* C61420 80240710 AFA30034 */  sw        $v1, 0x34($sp)
/* C61424 80240714 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C61428 80240718 8C630028 */  lw        $v1, 0x28($v1)
/* C6142C 8024071C 27B50028 */  addiu     $s5, $sp, 0x28
/* C61430 80240720 AFA30038 */  sw        $v1, 0x38($sp)
/* C61434 80240724 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C61438 80240728 3C0142C8 */  lui       $at, 0x42c8
/* C6143C 8024072C 44810000 */  mtc1      $at, $f0
/* C61440 80240730 8C63002C */  lw        $v1, 0x2c($v1)
/* C61444 80240734 0040A02D */  daddu     $s4, $v0, $zero
/* C61448 80240738 E7A00040 */  swc1      $f0, 0x40($sp)
/* C6144C 8024073C A7A00044 */  sh        $zero, 0x44($sp)
/* C61450 80240740 12000009 */  beqz      $s0, .L80240768
/* C61454 80240744 AFA3003C */   sw       $v1, 0x3c($sp)
/* C61458 80240748 864300A8 */  lh        $v1, 0xa8($s2)
/* C6145C 8024074C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C61460 80240750 AE20008C */  sw        $zero, 0x8c($s1)
/* C61464 80240754 A22000B5 */  sb        $zero, 0xb5($s1)
/* C61468 80240758 34420008 */  ori       $v0, $v0, 8
/* C6146C 8024075C AE230084 */  sw        $v1, 0x84($s1)
/* C61470 80240760 080901DE */  j         .L80240778
/* C61474 80240764 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240768:
/* C61478 80240768 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C6147C 8024076C 30420004 */  andi      $v0, $v0, 4
/* C61480 80240770 10400047 */  beqz      $v0, .L80240890
/* C61484 80240774 00000000 */   nop
.L80240778:
/* C61488 80240778 AE600070 */  sw        $zero, 0x70($s3)
/* C6148C 8024077C A640008E */  sh        $zero, 0x8e($s2)
/* C61490 80240780 8E2300CC */  lw        $v1, 0xcc($s1)
/* C61494 80240784 2404F7FF */  addiu     $a0, $zero, -0x801
/* C61498 80240788 A2200007 */  sb        $zero, 7($s1)
/* C6149C 8024078C 8E420000 */  lw        $v0, ($s2)
/* C614A0 80240790 8C630000 */  lw        $v1, ($v1)
/* C614A4 80240794 00441024 */  and       $v0, $v0, $a0
/* C614A8 80240798 AE420000 */  sw        $v0, ($s2)
/* C614AC 8024079C AE430028 */  sw        $v1, 0x28($s2)
/* C614B0 802407A0 96220086 */  lhu       $v0, 0x86($s1)
/* C614B4 802407A4 A64200A8 */  sh        $v0, 0xa8($s2)
/* C614B8 802407A8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C614BC 802407AC AE200090 */  sw        $zero, 0x90($s1)
/* C614C0 802407B0 8C420034 */  lw        $v0, 0x34($v0)
/* C614C4 802407B4 14400006 */  bnez      $v0, .L802407D0
/* C614C8 802407B8 2403FDFF */   addiu    $v1, $zero, -0x201
/* C614CC 802407BC 8E420000 */  lw        $v0, ($s2)
/* C614D0 802407C0 2403FFF7 */  addiu     $v1, $zero, -9
/* C614D4 802407C4 34420200 */  ori       $v0, $v0, 0x200
/* C614D8 802407C8 080901F7 */  j         .L802407DC
/* C614DC 802407CC 00431024 */   and      $v0, $v0, $v1
.L802407D0:
/* C614E0 802407D0 8E420000 */  lw        $v0, ($s2)
/* C614E4 802407D4 00431024 */  and       $v0, $v0, $v1
/* C614E8 802407D8 34420008 */  ori       $v0, $v0, 8
.L802407DC:
/* C614EC 802407DC AE420000 */  sw        $v0, ($s2)
/* C614F0 802407E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C614F4 802407E4 30420004 */  andi      $v0, $v0, 4
/* C614F8 802407E8 1040001E */  beqz      $v0, .L80240864
/* C614FC 802407EC 24040002 */   addiu    $a0, $zero, 2
/* C61500 802407F0 0240282D */  daddu     $a1, $s2, $zero
/* C61504 802407F4 0000302D */  daddu     $a2, $zero, $zero
/* C61508 802407F8 24020063 */  addiu     $v0, $zero, 0x63
/* C6150C 802407FC AE620070 */  sw        $v0, 0x70($s3)
/* C61510 80240800 AE600074 */  sw        $zero, 0x74($s3)
/* C61514 80240804 864300A8 */  lh        $v1, 0xa8($s2)
/* C61518 80240808 3C013F80 */  lui       $at, 0x3f80
/* C6151C 8024080C 44810000 */  mtc1      $at, $f0
/* C61520 80240810 3C014000 */  lui       $at, 0x4000
/* C61524 80240814 44811000 */  mtc1      $at, $f2
/* C61528 80240818 3C01C1A0 */  lui       $at, 0xc1a0
/* C6152C 8024081C 44812000 */  mtc1      $at, $f4
/* C61530 80240820 24020028 */  addiu     $v0, $zero, 0x28
/* C61534 80240824 AFA2001C */  sw        $v0, 0x1c($sp)
/* C61538 80240828 44833000 */  mtc1      $v1, $f6
/* C6153C 8024082C 00000000 */  nop
/* C61540 80240830 468031A0 */  cvt.s.w   $f6, $f6
/* C61544 80240834 44073000 */  mfc1      $a3, $f6
/* C61548 80240838 27A20048 */  addiu     $v0, $sp, 0x48
/* C6154C 8024083C AFA20020 */  sw        $v0, 0x20($sp)
/* C61550 80240840 E7A00010 */  swc1      $f0, 0x10($sp)
/* C61554 80240844 E7A20014 */  swc1      $f2, 0x14($sp)
/* C61558 80240848 0C01BFA4 */  jal       fx_emote
/* C6155C 8024084C E7A40018 */   swc1     $f4, 0x18($sp)
/* C61560 80240850 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C61564 80240854 2403FFFB */  addiu     $v1, $zero, -5
/* C61568 80240858 00431024 */  and       $v0, $v0, $v1
/* C6156C 8024085C 08090224 */  j         .L80240890
/* C61570 80240860 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240864:
/* C61574 80240864 8E220000 */  lw        $v0, ($s1)
/* C61578 80240868 3C034000 */  lui       $v1, 0x4000
/* C6157C 8024086C 00431024 */  and       $v0, $v0, $v1
/* C61580 80240870 10400007 */  beqz      $v0, .L80240890
/* C61584 80240874 3C03BFFF */   lui      $v1, 0xbfff
/* C61588 80240878 2402000C */  addiu     $v0, $zero, 0xc
/* C6158C 8024087C AE620070 */  sw        $v0, 0x70($s3)
/* C61590 80240880 8E220000 */  lw        $v0, ($s1)
/* C61594 80240884 3463FFFF */  ori       $v1, $v1, 0xffff
/* C61598 80240888 00431024 */  and       $v0, $v0, $v1
/* C6159C 8024088C AE220000 */  sw        $v0, ($s1)
.L80240890:
/* C615A0 80240890 8E220090 */  lw        $v0, 0x90($s1)
/* C615A4 80240894 1840000C */  blez      $v0, .L802408C8
/* C615A8 80240898 2442FFFF */   addiu    $v0, $v0, -1
/* C615AC 8024089C 14400087 */  bnez      $v0, L80240ABC_C617CC
/* C615B0 802408A0 AE220090 */   sw       $v0, 0x90($s1)
/* C615B4 802408A4 3C03FFAA */  lui       $v1, 0xffaa
/* C615B8 802408A8 8E420028 */  lw        $v0, 0x28($s2)
/* C615BC 802408AC 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* C615C0 802408B0 00431021 */  addu      $v0, $v0, $v1
/* C615C4 802408B4 2C420002 */  sltiu     $v0, $v0, 2
/* C615C8 802408B8 10400003 */  beqz      $v0, .L802408C8
/* C615CC 802408BC 3C020055 */   lui      $v0, 0x55
/* C615D0 802408C0 3442000C */  ori       $v0, $v0, 0xc
/* C615D4 802408C4 AE420028 */  sw        $v0, 0x28($s2)
.L802408C8:
/* C615D8 802408C8 8E630070 */  lw        $v1, 0x70($s3)
/* C615DC 802408CC 2402000C */  addiu     $v0, $zero, 0xc
/* C615E0 802408D0 10620048 */  beq       $v1, $v0, .L802409F4
/* C615E4 802408D4 2862000D */   slti     $v0, $v1, 0xd
/* C615E8 802408D8 1040000F */  beqz      $v0, .L80240918
/* C615EC 802408DC 24100001 */   addiu    $s0, $zero, 1
/* C615F0 802408E0 1070001E */  beq       $v1, $s0, .L8024095C
/* C615F4 802408E4 28620002 */   slti     $v0, $v1, 2
/* C615F8 802408E8 10400005 */  beqz      $v0, .L80240900
/* C615FC 802408EC 24020002 */   addiu    $v0, $zero, 2
/* C61600 802408F0 10600015 */  beqz      $v1, .L80240948
/* C61604 802408F4 0260202D */   daddu    $a0, $s3, $zero
/* C61608 802408F8 08090294 */  j         .L80240A50
/* C6160C 802408FC 00000000 */   nop
.L80240900:
/* C61610 80240900 1062001C */  beq       $v1, $v0, .L80240974
/* C61614 80240904 24020003 */   addiu    $v0, $zero, 3
/* C61618 80240908 10620035 */  beq       $v1, $v0, .L802409E0
/* C6161C 8024090C 0260202D */   daddu    $a0, $s3, $zero
/* C61620 80240910 08090294 */  j         .L80240A50
/* C61624 80240914 00000000 */   nop
.L80240918:
/* C61628 80240918 2402000E */  addiu     $v0, $zero, 0xe
/* C6162C 8024091C 1062003F */  beq       $v1, $v0, .L80240A1C
/* C61630 80240920 0062102A */   slt      $v0, $v1, $v0
/* C61634 80240924 14400038 */  bnez      $v0, .L80240A08
/* C61638 80240928 0260202D */   daddu    $a0, $s3, $zero
/* C6163C 8024092C 2402000F */  addiu     $v0, $zero, 0xf
/* C61640 80240930 10620040 */  beq       $v1, $v0, .L80240A34
/* C61644 80240934 24020063 */   addiu    $v0, $zero, 0x63
/* C61648 80240938 10620043 */  beq       $v1, $v0, .L80240A48
/* C6164C 8024093C 00000000 */   nop
/* C61650 80240940 08090294 */  j         .L80240A50
/* C61654 80240944 00000000 */   nop
.L80240948:
/* C61658 80240948 0280282D */  daddu     $a1, $s4, $zero
/* C6165C 8024094C 0C012568 */  jal       func_800495A0
/* C61660 80240950 02A0302D */   daddu    $a2, $s5, $zero
/* C61664 80240954 96220086 */  lhu       $v0, 0x86($s1)
/* C61668 80240958 A64200A8 */  sh        $v0, 0xa8($s2)
.L8024095C:
/* C6166C 8024095C 0260202D */  daddu     $a0, $s3, $zero
/* C61670 80240960 0280282D */  daddu     $a1, $s4, $zero
/* C61674 80240964 0C0125AE */  jal       func_800496B8
/* C61678 80240968 02A0302D */   daddu    $a2, $s5, $zero
/* C6167C 8024096C 08090294 */  j         .L80240A50
/* C61680 80240970 00000000 */   nop
.L80240974:
/* C61684 80240974 0260202D */  daddu     $a0, $s3, $zero
/* C61688 80240978 0280282D */  daddu     $a1, $s4, $zero
/* C6168C 8024097C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* C61690 80240980 02A0302D */   daddu    $a2, $s5, $zero
/* C61694 80240984 8E230088 */  lw        $v1, 0x88($s1)
/* C61698 80240988 24020006 */  addiu     $v0, $zero, 6
/* C6169C 8024098C 14620014 */  bne       $v1, $v0, .L802409E0
/* C616A0 80240990 0260202D */   daddu    $a0, $s3, $zero
/* C616A4 80240994 0C00A67F */  jal       rand_int
/* C616A8 80240998 24040064 */   addiu    $a0, $zero, 0x64
/* C616AC 8024099C 28420021 */  slti      $v0, $v0, 0x21
/* C616B0 802409A0 5040000F */  beql      $v0, $zero, .L802409E0
/* C616B4 802409A4 0260202D */   daddu    $a0, $s3, $zero
/* C616B8 802409A8 8E22008C */  lw        $v0, 0x8c($s1)
/* C616BC 802409AC 10400005 */  beqz      $v0, .L802409C4
/* C616C0 802409B0 3C020055 */   lui      $v0, 0x55
/* C616C4 802409B4 3442002F */  ori       $v0, $v0, 0x2f
/* C616C8 802409B8 AE20008C */  sw        $zero, 0x8c($s1)
/* C616CC 802409BC 08090274 */  j         .L802409D0
/* C616D0 802409C0 A22000B5 */   sb       $zero, 0xb5($s1)
.L802409C4:
/* C616D4 802409C4 3442002E */  ori       $v0, $v0, 0x2e
/* C616D8 802409C8 AE30008C */  sw        $s0, 0x8c($s1)
/* C616DC 802409CC A23000B5 */  sb        $s0, 0xb5($s1)
.L802409D0:
/* C616E0 802409D0 AE420028 */  sw        $v0, 0x28($s2)
/* C616E4 802409D4 24020007 */  addiu     $v0, $zero, 7
/* C616E8 802409D8 080902AF */  j         L80240ABC_C617CC
/* C616EC 802409DC AE220090 */   sw       $v0, 0x90($s1)
.L802409E0:
/* C616F0 802409E0 0280282D */  daddu     $a1, $s4, $zero
/* C616F4 802409E4 0C012701 */  jal       func_80049C04
/* C616F8 802409E8 02A0302D */   daddu    $a2, $s5, $zero
/* C616FC 802409EC 08090294 */  j         .L80240A50
/* C61700 802409F0 00000000 */   nop
.L802409F4:
/* C61704 802409F4 0260202D */  daddu     $a0, $s3, $zero
/* C61708 802409F8 0280282D */  daddu     $a1, $s4, $zero
/* C6170C 802409FC 0C0900C4 */  jal       kzn_03_set_script_owner_npc_anim
/* C61710 80240A00 02A0302D */   daddu    $a2, $s5, $zero
/* C61714 80240A04 0260202D */  daddu     $a0, $s3, $zero
.L80240A08:
/* C61718 80240A08 0280282D */  daddu     $a1, $s4, $zero
/* C6171C 80240A0C 0C0900E3 */  jal       kzn_03_UnkDistFunc
/* C61720 80240A10 02A0302D */   daddu    $a2, $s5, $zero
/* C61724 80240A14 08090294 */  j         .L80240A50
/* C61728 80240A18 00000000 */   nop
.L80240A1C:
/* C6172C 80240A1C 0260202D */  daddu     $a0, $s3, $zero
/* C61730 80240A20 0280282D */  daddu     $a1, $s4, $zero
/* C61734 80240A24 0C090130 */  jal       kzn_03_UnkNpcAIFunc12
/* C61738 80240A28 02A0302D */   daddu    $a2, $s5, $zero
/* C6173C 80240A2C 08090294 */  j         .L80240A50
/* C61740 80240A30 00000000 */   nop
.L80240A34:
/* C61744 80240A34 0280282D */  daddu     $a1, $s4, $zero
/* C61748 80240A38 0C090189 */  jal       kzn_03_set_script_owner_npc_col_height
/* C6174C 80240A3C 02A0302D */   daddu    $a2, $s5, $zero
/* C61750 80240A40 08090294 */  j         .L80240A50
/* C61754 80240A44 00000000 */   nop
.L80240A48:
/* C61758 80240A48 0C0129CF */  jal       func_8004A73C
/* C6175C 80240A4C 0260202D */   daddu    $a0, $s3, $zero
.L80240A50:
/* C61760 80240A50 8E230088 */  lw        $v1, 0x88($s1)
/* C61764 80240A54 24020006 */  addiu     $v0, $zero, 6
/* C61768 80240A58 14620019 */  bne       $v1, $v0, .L80240AC0
/* C6176C 80240A5C 0000102D */   daddu    $v0, $zero, $zero
/* C61770 80240A60 8E22008C */  lw        $v0, 0x8c($s1)
/* C61774 80240A64 10400003 */  beqz      $v0, .L80240A74
/* C61778 80240A68 24020001 */   addiu    $v0, $zero, 1
/* C6177C 80240A6C 0809029E */  j         .L80240A78
/* C61780 80240A70 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240A74:
/* C61784 80240A74 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240A78:
/* C61788 80240A78 8E22008C */  lw        $v0, 0x8c($s1)
/* C6178C 80240A7C 1040000F */  beqz      $v0, L80240ABC_C617CC
/* C61790 80240A80 3C03FFAA */   lui      $v1, 0xffaa
/* C61794 80240A84 8E420028 */  lw        $v0, 0x28($s2)
/* C61798 80240A88 3463FFFC */  ori       $v1, $v1, 0xfffc
/* C6179C 80240A8C 00431821 */  addu      $v1, $v0, $v1
/* C617A0 80240A90 2C620015 */  sltiu     $v0, $v1, 0x15
/* C617A4 80240A94 10400009 */  beqz      $v0, L80240ABC_C617CC
/* C617A8 80240A98 00031080 */   sll      $v0, $v1, 2
/* C617AC 80240A9C 3C018024 */  lui       $at, %hi(jtbl_802471E8_C67EF8)
/* C617B0 80240AA0 00220821 */  addu      $at, $at, $v0
/* C617B4 80240AA4 8C2271E8 */  lw        $v0, %lo(jtbl_802471E8_C67EF8)($at)
/* C617B8 80240AA8 00400008 */  jr        $v0
/* C617BC 80240AAC 00000000 */   nop
glabel L80240AB0_C617C0
/* C617C0 80240AB0 8E420028 */  lw        $v0, 0x28($s2)
/* C617C4 80240AB4 24420001 */  addiu     $v0, $v0, 1
/* C617C8 80240AB8 AE420028 */  sw        $v0, 0x28($s2)
glabel L80240ABC_C617CC
/* C617CC 80240ABC 0000102D */  daddu     $v0, $zero, $zero
.L80240AC0:
/* C617D0 80240AC0 8FBF0068 */  lw        $ra, 0x68($sp)
/* C617D4 80240AC4 8FB50064 */  lw        $s5, 0x64($sp)
/* C617D8 80240AC8 8FB40060 */  lw        $s4, 0x60($sp)
/* C617DC 80240ACC 8FB3005C */  lw        $s3, 0x5c($sp)
/* C617E0 80240AD0 8FB20058 */  lw        $s2, 0x58($sp)
/* C617E4 80240AD4 8FB10054 */  lw        $s1, 0x54($sp)
/* C617E8 80240AD8 8FB00050 */  lw        $s0, 0x50($sp)
/* C617EC 80240ADC 03E00008 */  jr        $ra
/* C617F0 80240AE0 27BD0070 */   addiu    $sp, $sp, 0x70
