.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F50_8017D0
/* 8017D0 80240F50 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 8017D4 80240F54 AFB00010 */  sw        $s0, 0x10($sp)
/* 8017D8 80240F58 0080802D */  daddu     $s0, $a0, $zero
/* 8017DC 80240F5C AFB20018 */  sw        $s2, 0x18($sp)
/* 8017E0 80240F60 AFBF001C */  sw        $ra, 0x1c($sp)
/* 8017E4 80240F64 AFB10014 */  sw        $s1, 0x14($sp)
/* 8017E8 80240F68 8E02000C */  lw        $v0, 0xc($s0)
/* 8017EC 80240F6C 10A00008 */  beqz      $a1, .L80240F90
/* 8017F0 80240F70 0000902D */   daddu    $s2, $zero, $zero
/* 8017F4 80240F74 8C450000 */  lw        $a1, ($v0)
/* 8017F8 80240F78 0C0B1EAF */  jal       get_variable
/* 8017FC 80240F7C 00000000 */   nop      
/* 801800 80240F80 AE020070 */  sw        $v0, 0x70($s0)
/* 801804 80240F84 AE000074 */  sw        $zero, 0x74($s0)
/* 801808 80240F88 8C420014 */  lw        $v0, 0x14($v0)
/* 80180C 80240F8C AE020078 */  sw        $v0, 0x78($s0)
.L80240F90:
/* 801810 80240F90 8E050078 */  lw        $a1, 0x78($s0)
/* 801814 80240F94 8E110070 */  lw        $s1, 0x70($s0)
/* 801818 80240F98 0C0B1EAF */  jal       get_variable
/* 80181C 80240F9C 0200202D */   daddu    $a0, $s0, $zero
/* 801820 80240FA0 10400006 */  beqz      $v0, .L80240FBC
/* 801824 80240FA4 24030002 */   addiu    $v1, $zero, 2
/* 801828 80240FA8 8E020074 */  lw        $v0, 0x74($s0)
/* 80182C 80240FAC 10430027 */  beq       $v0, $v1, .L8024104C
/* 801830 80240FB0 00000000 */   nop      
/* 801834 80240FB4 08090412 */  j         .L80241048
/* 801838 80240FB8 AE030074 */   sw       $v1, 0x74($s0)
.L80240FBC:
/* 80183C 80240FBC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 801840 80240FC0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 801844 80240FC4 8E260000 */  lw        $a2, ($s1)
/* 801848 80240FC8 8E270004 */  lw        $a3, 4($s1)
/* 80184C 80240FCC C44C0028 */  lwc1      $f12, 0x28($v0)
/* 801850 80240FD0 0C00A7B5 */  jal       dist2D
/* 801854 80240FD4 C44E0030 */   lwc1     $f14, 0x30($v0)
/* 801858 80240FD8 8E030074 */  lw        $v1, 0x74($s0)
/* 80185C 80240FDC 24040001 */  addiu     $a0, $zero, 1
/* 801860 80240FE0 10640013 */  beq       $v1, $a0, .L80241030
/* 801864 80240FE4 46000086 */   mov.s    $f2, $f0
/* 801868 80240FE8 28620002 */  slti      $v0, $v1, 2
/* 80186C 80240FEC 50400005 */  beql      $v0, $zero, .L80241004
/* 801870 80240FF0 24020002 */   addiu    $v0, $zero, 2
/* 801874 80240FF4 10600007 */  beqz      $v1, .L80241014
/* 801878 80240FF8 00000000 */   nop      
/* 80187C 80240FFC 08090413 */  j         .L8024104C
/* 801880 80241000 00000000 */   nop      
.L80241004:
/* 801884 80241004 50620010 */  beql      $v1, $v0, .L80241048
/* 801888 80241008 AE040074 */   sw       $a0, 0x74($s0)
/* 80188C 8024100C 08090413 */  j         .L8024104C
/* 801890 80241010 00000000 */   nop      
.L80241014:
/* 801894 80241014 C6200008 */  lwc1      $f0, 8($s1)
/* 801898 80241018 4600103C */  c.lt.s    $f2, $f0
/* 80189C 8024101C 00000000 */  nop       
/* 8018A0 80241020 4500000A */  bc1f      .L8024104C
/* 8018A4 80241024 00000000 */   nop      
/* 8018A8 80241028 08090412 */  j         .L80241048
/* 8018AC 8024102C AE040074 */   sw       $a0, 0x74($s0)
.L80241030:
/* 8018B0 80241030 C620000C */  lwc1      $f0, 0xc($s1)
/* 8018B4 80241034 4602003C */  c.lt.s    $f0, $f2
/* 8018B8 80241038 00000000 */  nop       
/* 8018BC 8024103C 45000003 */  bc1f      .L8024104C
/* 8018C0 80241040 00000000 */   nop      
/* 8018C4 80241044 AE000074 */  sw        $zero, 0x74($s0)
.L80241048:
/* 8018C8 80241048 24120001 */  addiu     $s2, $zero, 1
.L8024104C:
/* 8018CC 8024104C 12400005 */  beqz      $s2, .L80241064
/* 8018D0 80241050 00000000 */   nop      
/* 8018D4 80241054 8E250010 */  lw        $a1, 0x10($s1)
/* 8018D8 80241058 86060076 */  lh        $a2, 0x76($s0)
/* 8018DC 8024105C 0C052A95 */  jal       func_8014AA54
/* 8018E0 80241060 0000202D */   daddu    $a0, $zero, $zero
.L80241064:
/* 8018E4 80241064 8FBF001C */  lw        $ra, 0x1c($sp)
/* 8018E8 80241068 8FB20018 */  lw        $s2, 0x18($sp)
/* 8018EC 8024106C 8FB10014 */  lw        $s1, 0x14($sp)
/* 8018F0 80241070 8FB00010 */  lw        $s0, 0x10($sp)
/* 8018F4 80241074 0000102D */  daddu     $v0, $zero, $zero
/* 8018F8 80241078 03E00008 */  jr        $ra
/* 8018FC 8024107C 27BD0020 */   addiu    $sp, $sp, 0x20
