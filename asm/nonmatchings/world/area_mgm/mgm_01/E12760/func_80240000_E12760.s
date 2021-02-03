.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_E12760
/* E12760 80240000 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* E12764 80240004 AFB10014 */  sw        $s1, 0x14($sp)
/* E12768 80240008 3C11800F */  lui       $s1, %hi(gPlayerStatusPtr)
/* E1276C 8024000C 26317B30 */  addiu     $s1, $s1, %lo(gPlayerStatusPtr)
/* E12770 80240010 AFBF0018 */  sw        $ra, 0x18($sp)
/* E12774 80240014 AFB00010 */  sw        $s0, 0x10($sp)
/* E12778 80240018 F7B80030 */  sdc1      $f24, 0x30($sp)
/* E1277C 8024001C F7B60028 */  sdc1      $f22, 0x28($sp)
/* E12780 80240020 F7B40020 */  sdc1      $f20, 0x20($sp)
/* E12784 80240024 8E260000 */  lw        $a2, ($s1)
/* E12788 80240028 C4C40028 */  lwc1      $f4, 0x28($a2)
/* E1278C 8024002C 3C018024 */  lui       $at, %hi(D_802435B0_E15D10)
/* E12790 80240030 D42235B0 */  ldc1      $f2, %lo(D_802435B0_E15D10)($at)
/* E12794 80240034 46002021 */  cvt.d.s   $f0, $f4
/* E12798 80240038 4622003C */  c.lt.d    $f0, $f2
/* E1279C 8024003C 00000000 */  nop
/* E127A0 80240040 45000003 */  bc1f      .L80240050
/* E127A4 80240044 0080802D */   daddu    $s0, $a0, $zero
/* E127A8 80240048 3C01C2BE */  lui       $at, 0xc2be
/* E127AC 8024004C 44812000 */  mtc1      $at, $f4
.L80240050:
/* E127B0 80240050 3C018024 */  lui       $at, %hi(D_802435B8_E15D18)
/* E127B4 80240054 D42235B8 */  ldc1      $f2, %lo(D_802435B8_E15D18)($at)
/* E127B8 80240058 46002021 */  cvt.d.s   $f0, $f4
/* E127BC 8024005C 4620103C */  c.lt.d    $f2, $f0
/* E127C0 80240060 00000000 */  nop
/* E127C4 80240064 45000003 */  bc1f      .L80240074
/* E127C8 80240068 00000000 */   nop
/* E127CC 8024006C 3C0142BE */  lui       $at, 0x42be
/* E127D0 80240070 44812000 */  mtc1      $at, $f4
.L80240074:
/* E127D4 80240074 C4D80030 */  lwc1      $f24, 0x30($a2)
/* E127D8 80240078 3C01C054 */  lui       $at, 0xc054
/* E127DC 8024007C 44811800 */  mtc1      $at, $f3
/* E127E0 80240080 44801000 */  mtc1      $zero, $f2
/* E127E4 80240084 4600C021 */  cvt.d.s   $f0, $f24
/* E127E8 80240088 4622003C */  c.lt.d    $f0, $f2
/* E127EC 8024008C 00000000 */  nop
/* E127F0 80240090 45000003 */  bc1f      .L802400A0
/* E127F4 80240094 00000000 */   nop
/* E127F8 80240098 3C01C2A0 */  lui       $at, 0xc2a0
/* E127FC 8024009C 4481C000 */  mtc1      $at, $f24
.L802400A0:
/* E12800 802400A0 3C014054 */  lui       $at, 0x4054
/* E12804 802400A4 44811800 */  mtc1      $at, $f3
/* E12808 802400A8 44801000 */  mtc1      $zero, $f2
/* E1280C 802400AC 4600C021 */  cvt.d.s   $f0, $f24
/* E12810 802400B0 4620103C */  c.lt.d    $f2, $f0
/* E12814 802400B4 00000000 */  nop
/* E12818 802400B8 45000003 */  bc1f      .L802400C8
/* E1281C 802400BC 00000000 */   nop
/* E12820 802400C0 3C0142A0 */  lui       $at, 0x42a0
/* E12824 802400C4 4481C000 */  mtc1      $at, $f24
.L802400C8:
/* E12828 802400C8 3C018024 */  lui       $at, %hi(D_802435C0_E15D20)
/* E1282C 802400CC D42035C0 */  ldc1      $f0, %lo(D_802435C0_E15D20)($at)
/* E12830 802400D0 4600C521 */  cvt.d.s   $f20, $f24
/* E12834 802400D4 4620A502 */  mul.d     $f20, $f20, $f0
/* E12838 802400D8 00000000 */  nop
/* E1283C 802400DC 3C018024 */  lui       $at, %hi(D_802435C8_E15D28)
/* E12840 802400E0 D42035C8 */  ldc1      $f0, %lo(D_802435C8_E15D28)($at)
/* E12844 802400E4 4620A502 */  mul.d     $f20, $f20, $f0
/* E12848 802400E8 00000000 */  nop
/* E1284C 802400EC 3C018024 */  lui       $at, %hi(D_802435D0_E15D30)
/* E12850 802400F0 D42035D0 */  ldc1      $f0, %lo(D_802435D0_E15D30)($at)
/* E12854 802400F4 460025A1 */  cvt.d.s   $f22, $f4
/* E12858 802400F8 4620B582 */  mul.d     $f22, $f22, $f0
/* E1285C 802400FC 00000000 */  nop
/* E12860 80240100 0200202D */  daddu     $a0, $s0, $zero
/* E12864 80240104 3C05FE36 */  lui       $a1, 0xfe36
/* E12868 80240108 34A53C80 */  ori       $a1, $a1, 0x3c80
/* E1286C 8024010C 44062000 */  mfc1      $a2, $f4
/* E12870 80240110 4620A520 */  cvt.s.d   $f20, $f20
/* E12874 80240114 0C0B2190 */  jal       set_float_variable
/* E12878 80240118 4620B5A0 */   cvt.s.d  $f22, $f22
/* E1287C 8024011C 0200202D */  daddu     $a0, $s0, $zero
/* E12880 80240120 3C05FE36 */  lui       $a1, 0xfe36
/* E12884 80240124 4406C000 */  mfc1      $a2, $f24
/* E12888 80240128 0C0B2190 */  jal       set_float_variable
/* E1288C 8024012C 34A53C81 */   ori      $a1, $a1, 0x3c81
/* E12890 80240130 0200202D */  daddu     $a0, $s0, $zero
/* E12894 80240134 3C05FE36 */  lui       $a1, 0xfe36
/* E12898 80240138 4406A000 */  mfc1      $a2, $f20
/* E1289C 8024013C 0C0B2190 */  jal       set_float_variable
/* E128A0 80240140 34A53C82 */   ori      $a1, $a1, 0x3c82
/* E128A4 80240144 0200202D */  daddu     $a0, $s0, $zero
/* E128A8 80240148 3C05FE36 */  lui       $a1, 0xfe36
/* E128AC 8024014C 4406B000 */  mfc1      $a2, $f22
/* E128B0 80240150 0C0B2190 */  jal       set_float_variable
/* E128B4 80240154 34A53C83 */   ori      $a1, $a1, 0x3c83
/* E128B8 80240158 8E230000 */  lw        $v1, ($s1)
/* E128BC 8024015C C4600028 */  lwc1      $f0, 0x28($v1)
/* E128C0 80240160 3C018024 */  lui       $at, %hi(D_802435D8_E15D38)
/* E128C4 80240164 D42235D8 */  ldc1      $f2, %lo(D_802435D8_E15D38)($at)
/* E128C8 80240168 46000021 */  cvt.d.s   $f0, $f0
/* E128CC 8024016C 46220002 */  mul.d     $f0, $f0, $f2
/* E128D0 80240170 00000000 */  nop
/* E128D4 80240174 3C028015 */  lui       $v0, %hi(D_80151328)
/* E128D8 80240178 8C421328 */  lw        $v0, %lo(D_80151328)($v0)
/* E128DC 8024017C 3C0142A0 */  lui       $at, 0x42a0
/* E128E0 80240180 44811000 */  mtc1      $at, $f2
/* E128E4 80240184 00000000 */  nop
/* E128E8 80240188 E442000C */  swc1      $f2, 0xc($v0)
/* E128EC 8024018C 3C014248 */  lui       $at, 0x4248
/* E128F0 80240190 44811000 */  mtc1      $at, $f2
/* E128F4 80240194 46200020 */  cvt.s.d   $f0, $f0
/* E128F8 80240198 E4400008 */  swc1      $f0, 8($v0)
/* E128FC 8024019C C4600030 */  lwc1      $f0, 0x30($v1)
/* E12900 802401A0 46020000 */  add.s     $f0, $f0, $f2
/* E12904 802401A4 E4400010 */  swc1      $f0, 0x10($v0)
/* E12908 802401A8 8FBF0018 */  lw        $ra, 0x18($sp)
/* E1290C 802401AC 8FB10014 */  lw        $s1, 0x14($sp)
/* E12910 802401B0 8FB00010 */  lw        $s0, 0x10($sp)
/* E12914 802401B4 D7B80030 */  ldc1      $f24, 0x30($sp)
/* E12918 802401B8 D7B60028 */  ldc1      $f22, 0x28($sp)
/* E1291C 802401BC D7B40020 */  ldc1      $f20, 0x20($sp)
/* E12920 802401C0 24020002 */  addiu     $v0, $zero, 2
/* E12924 802401C4 03E00008 */  jr        $ra
/* E12928 802401C8 27BD0038 */   addiu    $sp, $sp, 0x38
/* E1292C 802401CC 00000000 */  nop
