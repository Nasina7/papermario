.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240784_99D114
/* 99D114 80240784 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 99D118 80240788 AFB3005C */  sw        $s3, 0x5c($sp)
/* 99D11C 8024078C 0080982D */  daddu     $s3, $a0, $zero
/* 99D120 80240790 AFBF0068 */  sw        $ra, 0x68($sp)
/* 99D124 80240794 AFB50064 */  sw        $s5, 0x64($sp)
/* 99D128 80240798 AFB40060 */  sw        $s4, 0x60($sp)
/* 99D12C 8024079C AFB20058 */  sw        $s2, 0x58($sp)
/* 99D130 802407A0 AFB10054 */  sw        $s1, 0x54($sp)
/* 99D134 802407A4 AFB00050 */  sw        $s0, 0x50($sp)
/* 99D138 802407A8 8E710148 */  lw        $s1, 0x148($s3)
/* 99D13C 802407AC 86240008 */  lh        $a0, 8($s1)
/* 99D140 802407B0 0C00EABB */  jal       get_npc_unsafe
/* 99D144 802407B4 00A0802D */   daddu    $s0, $a1, $zero
/* 99D148 802407B8 8E63000C */  lw        $v1, 0xc($s3)
/* 99D14C 802407BC 0260202D */  daddu     $a0, $s3, $zero
/* 99D150 802407C0 8C650000 */  lw        $a1, ($v1)
/* 99D154 802407C4 0C0B1EAF */  jal       get_variable
/* 99D158 802407C8 0040902D */   daddu    $s2, $v0, $zero
/* 99D15C 802407CC AFA00028 */  sw        $zero, 0x28($sp)
/* 99D160 802407D0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 99D164 802407D4 8C630030 */  lw        $v1, 0x30($v1)
/* 99D168 802407D8 AFA3002C */  sw        $v1, 0x2c($sp)
/* 99D16C 802407DC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 99D170 802407E0 8C63001C */  lw        $v1, 0x1c($v1)
/* 99D174 802407E4 AFA30030 */  sw        $v1, 0x30($sp)
/* 99D178 802407E8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 99D17C 802407EC 8C630024 */  lw        $v1, 0x24($v1)
/* 99D180 802407F0 AFA30034 */  sw        $v1, 0x34($sp)
/* 99D184 802407F4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 99D188 802407F8 8C630028 */  lw        $v1, 0x28($v1)
/* 99D18C 802407FC 27B50028 */  addiu     $s5, $sp, 0x28
/* 99D190 80240800 AFA30038 */  sw        $v1, 0x38($sp)
/* 99D194 80240804 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 99D198 80240808 3C0142C8 */  lui       $at, 0x42c8
/* 99D19C 8024080C 44810000 */  mtc1      $at, $f0
/* 99D1A0 80240810 8C63002C */  lw        $v1, 0x2c($v1)
/* 99D1A4 80240814 0040A02D */  daddu     $s4, $v0, $zero
/* 99D1A8 80240818 E7A00040 */  swc1      $f0, 0x40($sp)
/* 99D1AC 8024081C A7A00044 */  sh        $zero, 0x44($sp)
/* 99D1B0 80240820 12000009 */  beqz      $s0, .L80240848
/* 99D1B4 80240824 AFA3003C */   sw       $v1, 0x3c($sp)
/* 99D1B8 80240828 864300A8 */  lh        $v1, 0xa8($s2)
/* 99D1BC 8024082C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 99D1C0 80240830 AE20008C */  sw        $zero, 0x8c($s1)
/* 99D1C4 80240834 A22000B5 */  sb        $zero, 0xb5($s1)
/* 99D1C8 80240838 34420008 */  ori       $v0, $v0, 8
/* 99D1CC 8024083C AE230084 */  sw        $v1, 0x84($s1)
/* 99D1D0 80240840 08090216 */  j         .L80240858
/* 99D1D4 80240844 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240848:
/* 99D1D8 80240848 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 99D1DC 8024084C 30420004 */  andi      $v0, $v0, 4
/* 99D1E0 80240850 10400047 */  beqz      $v0, .L80240970
/* 99D1E4 80240854 00000000 */   nop      
.L80240858:
/* 99D1E8 80240858 AE600070 */  sw        $zero, 0x70($s3)
/* 99D1EC 8024085C A640008E */  sh        $zero, 0x8e($s2)
/* 99D1F0 80240860 8E2300CC */  lw        $v1, 0xcc($s1)
/* 99D1F4 80240864 2404F7FF */  addiu     $a0, $zero, -0x801
/* 99D1F8 80240868 A2200007 */  sb        $zero, 7($s1)
/* 99D1FC 8024086C 8E420000 */  lw        $v0, ($s2)
/* 99D200 80240870 8C630000 */  lw        $v1, ($v1)
/* 99D204 80240874 00441024 */  and       $v0, $v0, $a0
/* 99D208 80240878 AE420000 */  sw        $v0, ($s2)
/* 99D20C 8024087C AE430028 */  sw        $v1, 0x28($s2)
/* 99D210 80240880 96220086 */  lhu       $v0, 0x86($s1)
/* 99D214 80240884 A64200A8 */  sh        $v0, 0xa8($s2)
/* 99D218 80240888 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 99D21C 8024088C AE200090 */  sw        $zero, 0x90($s1)
/* 99D220 80240890 8C420034 */  lw        $v0, 0x34($v0)
/* 99D224 80240894 14400006 */  bnez      $v0, .L802408B0
/* 99D228 80240898 2403FDFF */   addiu    $v1, $zero, -0x201
/* 99D22C 8024089C 8E420000 */  lw        $v0, ($s2)
/* 99D230 802408A0 2403FFF7 */  addiu     $v1, $zero, -9
/* 99D234 802408A4 34420200 */  ori       $v0, $v0, 0x200
/* 99D238 802408A8 0809022F */  j         .L802408BC
/* 99D23C 802408AC 00431024 */   and      $v0, $v0, $v1
.L802408B0:
/* 99D240 802408B0 8E420000 */  lw        $v0, ($s2)
/* 99D244 802408B4 00431024 */  and       $v0, $v0, $v1
/* 99D248 802408B8 34420008 */  ori       $v0, $v0, 8
.L802408BC:
/* 99D24C 802408BC AE420000 */  sw        $v0, ($s2)
/* 99D250 802408C0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 99D254 802408C4 30420004 */  andi      $v0, $v0, 4
/* 99D258 802408C8 1040001E */  beqz      $v0, .L80240944
/* 99D25C 802408CC 24040002 */   addiu    $a0, $zero, 2
/* 99D260 802408D0 0240282D */  daddu     $a1, $s2, $zero
/* 99D264 802408D4 0000302D */  daddu     $a2, $zero, $zero
/* 99D268 802408D8 24020063 */  addiu     $v0, $zero, 0x63
/* 99D26C 802408DC AE620070 */  sw        $v0, 0x70($s3)
/* 99D270 802408E0 AE600074 */  sw        $zero, 0x74($s3)
/* 99D274 802408E4 864300A8 */  lh        $v1, 0xa8($s2)
/* 99D278 802408E8 3C013F80 */  lui       $at, 0x3f80
/* 99D27C 802408EC 44810000 */  mtc1      $at, $f0
/* 99D280 802408F0 3C014000 */  lui       $at, 0x4000
/* 99D284 802408F4 44811000 */  mtc1      $at, $f2
/* 99D288 802408F8 3C01C1A0 */  lui       $at, 0xc1a0
/* 99D28C 802408FC 44812000 */  mtc1      $at, $f4
/* 99D290 80240900 24020028 */  addiu     $v0, $zero, 0x28
/* 99D294 80240904 AFA2001C */  sw        $v0, 0x1c($sp)
/* 99D298 80240908 44833000 */  mtc1      $v1, $f6
/* 99D29C 8024090C 00000000 */  nop       
/* 99D2A0 80240910 468031A0 */  cvt.s.w   $f6, $f6
/* 99D2A4 80240914 44073000 */  mfc1      $a3, $f6
/* 99D2A8 80240918 27A20048 */  addiu     $v0, $sp, 0x48
/* 99D2AC 8024091C AFA20020 */  sw        $v0, 0x20($sp)
/* 99D2B0 80240920 E7A00010 */  swc1      $f0, 0x10($sp)
/* 99D2B4 80240924 E7A20014 */  swc1      $f2, 0x14($sp)
/* 99D2B8 80240928 0C01BFA4 */  jal       fx_emote
/* 99D2BC 8024092C E7A40018 */   swc1     $f4, 0x18($sp)
/* 99D2C0 80240930 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 99D2C4 80240934 2403FFFB */  addiu     $v1, $zero, -5
/* 99D2C8 80240938 00431024 */  and       $v0, $v0, $v1
/* 99D2CC 8024093C 0809025C */  j         .L80240970
/* 99D2D0 80240940 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240944:
/* 99D2D4 80240944 8E220000 */  lw        $v0, ($s1)
/* 99D2D8 80240948 3C034000 */  lui       $v1, 0x4000
/* 99D2DC 8024094C 00431024 */  and       $v0, $v0, $v1
/* 99D2E0 80240950 10400007 */  beqz      $v0, .L80240970
/* 99D2E4 80240954 3C03BFFF */   lui      $v1, 0xbfff
/* 99D2E8 80240958 2402000C */  addiu     $v0, $zero, 0xc
/* 99D2EC 8024095C AE620070 */  sw        $v0, 0x70($s3)
/* 99D2F0 80240960 8E220000 */  lw        $v0, ($s1)
/* 99D2F4 80240964 3463FFFF */  ori       $v1, $v1, 0xffff
/* 99D2F8 80240968 00431024 */  and       $v0, $v0, $v1
/* 99D2FC 8024096C AE220000 */  sw        $v0, ($s1)
.L80240970:
/* 99D300 80240970 8E220090 */  lw        $v0, 0x90($s1)
/* 99D304 80240974 1840000C */  blez      $v0, .L802409A8
/* 99D308 80240978 2442FFFF */   addiu    $v0, $v0, -1
/* 99D30C 8024097C 14400087 */  bnez      $v0, .L80240B9C
/* 99D310 80240980 AE220090 */   sw       $v0, 0x90($s1)
/* 99D314 80240984 3C03FFAA */  lui       $v1, 0xffaa
/* 99D318 80240988 8E420028 */  lw        $v0, 0x28($s2)
/* 99D31C 8024098C 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 99D320 80240990 00431021 */  addu      $v0, $v0, $v1
/* 99D324 80240994 2C420002 */  sltiu     $v0, $v0, 2
/* 99D328 80240998 10400003 */  beqz      $v0, .L802409A8
/* 99D32C 8024099C 3C020055 */   lui      $v0, 0x55
/* 99D330 802409A0 3442000C */  ori       $v0, $v0, 0xc
/* 99D334 802409A4 AE420028 */  sw        $v0, 0x28($s2)
.L802409A8:
/* 99D338 802409A8 8E630070 */  lw        $v1, 0x70($s3)
/* 99D33C 802409AC 2402000C */  addiu     $v0, $zero, 0xc
/* 99D340 802409B0 10620048 */  beq       $v1, $v0, .L80240AD4
/* 99D344 802409B4 2862000D */   slti     $v0, $v1, 0xd
/* 99D348 802409B8 1040000F */  beqz      $v0, .L802409F8
/* 99D34C 802409BC 24100001 */   addiu    $s0, $zero, 1
/* 99D350 802409C0 1070001E */  beq       $v1, $s0, .L80240A3C
/* 99D354 802409C4 28620002 */   slti     $v0, $v1, 2
/* 99D358 802409C8 10400005 */  beqz      $v0, .L802409E0
/* 99D35C 802409CC 24020002 */   addiu    $v0, $zero, 2
/* 99D360 802409D0 10600015 */  beqz      $v1, .L80240A28
/* 99D364 802409D4 0260202D */   daddu    $a0, $s3, $zero
/* 99D368 802409D8 080902CC */  j         .L80240B30
/* 99D36C 802409DC 00000000 */   nop      
.L802409E0:
/* 99D370 802409E0 1062001C */  beq       $v1, $v0, .L80240A54
/* 99D374 802409E4 24020003 */   addiu    $v0, $zero, 3
/* 99D378 802409E8 10620035 */  beq       $v1, $v0, .L80240AC0
/* 99D37C 802409EC 0260202D */   daddu    $a0, $s3, $zero
/* 99D380 802409F0 080902CC */  j         .L80240B30
/* 99D384 802409F4 00000000 */   nop      
.L802409F8:
/* 99D388 802409F8 2402000E */  addiu     $v0, $zero, 0xe
/* 99D38C 802409FC 1062003F */  beq       $v1, $v0, .L80240AFC
/* 99D390 80240A00 0062102A */   slt      $v0, $v1, $v0
/* 99D394 80240A04 14400038 */  bnez      $v0, .L80240AE8
/* 99D398 80240A08 0260202D */   daddu    $a0, $s3, $zero
/* 99D39C 80240A0C 2402000F */  addiu     $v0, $zero, 0xf
/* 99D3A0 80240A10 10620040 */  beq       $v1, $v0, .L80240B14
/* 99D3A4 80240A14 24020063 */   addiu    $v0, $zero, 0x63
/* 99D3A8 80240A18 10620043 */  beq       $v1, $v0, .L80240B28
/* 99D3AC 80240A1C 00000000 */   nop      
/* 99D3B0 80240A20 080902CC */  j         .L80240B30
/* 99D3B4 80240A24 00000000 */   nop      
.L80240A28:
/* 99D3B8 80240A28 0280282D */  daddu     $a1, $s4, $zero
/* 99D3BC 80240A2C 0C012568 */  jal       func_800495A0
/* 99D3C0 80240A30 02A0302D */   daddu    $a2, $s5, $zero
/* 99D3C4 80240A34 96220086 */  lhu       $v0, 0x86($s1)
/* 99D3C8 80240A38 A64200A8 */  sh        $v0, 0xa8($s2)
.L80240A3C:
/* 99D3CC 80240A3C 0260202D */  daddu     $a0, $s3, $zero
/* 99D3D0 80240A40 0280282D */  daddu     $a1, $s4, $zero
/* 99D3D4 80240A44 0C0125AE */  jal       func_800496B8
/* 99D3D8 80240A48 02A0302D */   daddu    $a2, $s5, $zero
/* 99D3DC 80240A4C 080902CC */  j         .L80240B30
/* 99D3E0 80240A50 00000000 */   nop      
.L80240A54:
/* 99D3E4 80240A54 0260202D */  daddu     $a0, $s3, $zero
/* 99D3E8 80240A58 0280282D */  daddu     $a1, $s4, $zero
/* 99D3EC 80240A5C 0C0126D1 */  jal       func_80049B44
/* 99D3F0 80240A60 02A0302D */   daddu    $a2, $s5, $zero
/* 99D3F4 80240A64 8E230088 */  lw        $v1, 0x88($s1)
/* 99D3F8 80240A68 24020006 */  addiu     $v0, $zero, 6
/* 99D3FC 80240A6C 14620014 */  bne       $v1, $v0, .L80240AC0
/* 99D400 80240A70 0260202D */   daddu    $a0, $s3, $zero
/* 99D404 80240A74 0C00A67F */  jal       rand_int
/* 99D408 80240A78 24040064 */   addiu    $a0, $zero, 0x64
/* 99D40C 80240A7C 28420021 */  slti      $v0, $v0, 0x21
/* 99D410 80240A80 5040000F */  beql      $v0, $zero, .L80240AC0
/* 99D414 80240A84 0260202D */   daddu    $a0, $s3, $zero
/* 99D418 80240A88 8E22008C */  lw        $v0, 0x8c($s1)
/* 99D41C 80240A8C 10400005 */  beqz      $v0, .L80240AA4
/* 99D420 80240A90 3C020055 */   lui      $v0, 0x55
/* 99D424 80240A94 3442002F */  ori       $v0, $v0, 0x2f
/* 99D428 80240A98 AE20008C */  sw        $zero, 0x8c($s1)
/* 99D42C 80240A9C 080902AC */  j         .L80240AB0
/* 99D430 80240AA0 A22000B5 */   sb       $zero, 0xb5($s1)
.L80240AA4:
/* 99D434 80240AA4 3442002E */  ori       $v0, $v0, 0x2e
/* 99D438 80240AA8 AE30008C */  sw        $s0, 0x8c($s1)
/* 99D43C 80240AAC A23000B5 */  sb        $s0, 0xb5($s1)
.L80240AB0:
/* 99D440 80240AB0 AE420028 */  sw        $v0, 0x28($s2)
/* 99D444 80240AB4 24020007 */  addiu     $v0, $zero, 7
/* 99D448 80240AB8 080902E7 */  j         .L80240B9C
/* 99D44C 80240ABC AE220090 */   sw       $v0, 0x90($s1)
.L80240AC0:
/* 99D450 80240AC0 0280282D */  daddu     $a1, $s4, $zero
/* 99D454 80240AC4 0C012701 */  jal       func_80049C04
/* 99D458 80240AC8 02A0302D */   daddu    $a2, $s5, $zero
/* 99D45C 80240ACC 080902CC */  j         .L80240B30
/* 99D460 80240AD0 00000000 */   nop      
.L80240AD4:
/* 99D464 80240AD4 0260202D */  daddu     $a0, $s3, $zero
/* 99D468 80240AD8 0280282D */  daddu     $a1, $s4, $zero
/* 99D46C 80240ADC 0C0900FC */  jal       func_802403F0_99CD80
/* 99D470 80240AE0 02A0302D */   daddu    $a2, $s5, $zero
/* 99D474 80240AE4 0260202D */  daddu     $a0, $s3, $zero
.L80240AE8:
/* 99D478 80240AE8 0280282D */  daddu     $a1, $s4, $zero
/* 99D47C 80240AEC 0C09011B */  jal       func_8024046C_99CDFC
/* 99D480 80240AF0 02A0302D */   daddu    $a2, $s5, $zero
/* 99D484 80240AF4 080902CC */  j         .L80240B30
/* 99D488 80240AF8 00000000 */   nop      
.L80240AFC:
/* 99D48C 80240AFC 0260202D */  daddu     $a0, $s3, $zero
/* 99D490 80240B00 0280282D */  daddu     $a1, $s4, $zero
/* 99D494 80240B04 0C090168 */  jal       func_802405A0_99CF30
/* 99D498 80240B08 02A0302D */   daddu    $a2, $s5, $zero
/* 99D49C 80240B0C 080902CC */  j         .L80240B30
/* 99D4A0 80240B10 00000000 */   nop      
.L80240B14:
/* 99D4A4 80240B14 0280282D */  daddu     $a1, $s4, $zero
/* 99D4A8 80240B18 0C0901C1 */  jal       func_80240704_99D094
/* 99D4AC 80240B1C 02A0302D */   daddu    $a2, $s5, $zero
/* 99D4B0 80240B20 080902CC */  j         .L80240B30
/* 99D4B4 80240B24 00000000 */   nop      
.L80240B28:
/* 99D4B8 80240B28 0C0129CF */  jal       func_8004A73C
/* 99D4BC 80240B2C 0260202D */   daddu    $a0, $s3, $zero
.L80240B30:
/* 99D4C0 80240B30 8E230088 */  lw        $v1, 0x88($s1)
/* 99D4C4 80240B34 24020006 */  addiu     $v0, $zero, 6
/* 99D4C8 80240B38 14620019 */  bne       $v1, $v0, .L80240BA0
/* 99D4CC 80240B3C 0000102D */   daddu    $v0, $zero, $zero
/* 99D4D0 80240B40 8E22008C */  lw        $v0, 0x8c($s1)
/* 99D4D4 80240B44 10400003 */  beqz      $v0, .L80240B54
/* 99D4D8 80240B48 24020001 */   addiu    $v0, $zero, 1
/* 99D4DC 80240B4C 080902D6 */  j         .L80240B58
/* 99D4E0 80240B50 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240B54:
/* 99D4E4 80240B54 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240B58:
/* 99D4E8 80240B58 8E22008C */  lw        $v0, 0x8c($s1)
/* 99D4EC 80240B5C 1040000F */  beqz      $v0, .L80240B9C
/* 99D4F0 80240B60 3C03FFAA */   lui      $v1, 0xffaa
/* 99D4F4 80240B64 8E420028 */  lw        $v0, 0x28($s2)
/* 99D4F8 80240B68 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 99D4FC 80240B6C 00431821 */  addu      $v1, $v0, $v1
/* 99D500 80240B70 2C620015 */  sltiu     $v0, $v1, 0x15
/* 99D504 80240B74 10400009 */  beqz      $v0, .L80240B9C
/* 99D508 80240B78 00031080 */   sll      $v0, $v1, 2
/* 99D50C 80240B7C 3C018024 */  lui       $at, 0x8024
/* 99D510 80240B80 00220821 */  addu      $at, $at, $v0
/* 99D514 80240B84 8C224448 */  lw        $v0, 0x4448($at)
/* 99D518 80240B88 00400008 */  jr        $v0
/* 99D51C 80240B8C 00000000 */   nop      
/* 99D520 80240B90 8E420028 */  lw        $v0, 0x28($s2)
/* 99D524 80240B94 24420001 */  addiu     $v0, $v0, 1
/* 99D528 80240B98 AE420028 */  sw        $v0, 0x28($s2)
.L80240B9C:
/* 99D52C 80240B9C 0000102D */  daddu     $v0, $zero, $zero
.L80240BA0:
/* 99D530 80240BA0 8FBF0068 */  lw        $ra, 0x68($sp)
/* 99D534 80240BA4 8FB50064 */  lw        $s5, 0x64($sp)
/* 99D538 80240BA8 8FB40060 */  lw        $s4, 0x60($sp)
/* 99D53C 80240BAC 8FB3005C */  lw        $s3, 0x5c($sp)
/* 99D540 80240BB0 8FB20058 */  lw        $s2, 0x58($sp)
/* 99D544 80240BB4 8FB10054 */  lw        $s1, 0x54($sp)
/* 99D548 80240BB8 8FB00050 */  lw        $s0, 0x50($sp)
/* 99D54C 80240BBC 03E00008 */  jr        $ra
/* 99D550 80240BC0 27BD0070 */   addiu    $sp, $sp, 0x70
