.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024135C_D30FDC
/* D30FDC 8024135C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D30FE0 80241360 AFB20038 */  sw        $s2, 0x38($sp)
/* D30FE4 80241364 0080902D */  daddu     $s2, $a0, $zero
/* D30FE8 80241368 AFBF0048 */  sw        $ra, 0x48($sp)
/* D30FEC 8024136C AFB50044 */  sw        $s5, 0x44($sp)
/* D30FF0 80241370 AFB40040 */  sw        $s4, 0x40($sp)
/* D30FF4 80241374 AFB3003C */  sw        $s3, 0x3c($sp)
/* D30FF8 80241378 AFB10034 */  sw        $s1, 0x34($sp)
/* D30FFC 8024137C AFB00030 */  sw        $s0, 0x30($sp)
/* D31000 80241380 8E510148 */  lw        $s1, 0x148($s2)
/* D31004 80241384 86240008 */  lh        $a0, 8($s1)
/* D31008 80241388 0C00EABB */  jal       get_npc_unsafe
/* D3100C 8024138C 00A0802D */   daddu    $s0, $a1, $zero
/* D31010 80241390 8E43000C */  lw        $v1, 0xc($s2)
/* D31014 80241394 0240202D */  daddu     $a0, $s2, $zero
/* D31018 80241398 8C650000 */  lw        $a1, ($v1)
/* D3101C 8024139C 0C0B1EAF */  jal       get_variable
/* D31020 802413A0 0040A82D */   daddu    $s5, $v0, $zero
/* D31024 802413A4 AFA00010 */  sw        $zero, 0x10($sp)
/* D31028 802413A8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D3102C 802413AC 8C630030 */  lw        $v1, 0x30($v1)
/* D31030 802413B0 AFA30014 */  sw        $v1, 0x14($sp)
/* D31034 802413B4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D31038 802413B8 8C63001C */  lw        $v1, 0x1c($v1)
/* D3103C 802413BC AFA30018 */  sw        $v1, 0x18($sp)
/* D31040 802413C0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D31044 802413C4 8C630024 */  lw        $v1, 0x24($v1)
/* D31048 802413C8 AFA3001C */  sw        $v1, 0x1c($sp)
/* D3104C 802413CC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D31050 802413D0 8C630028 */  lw        $v1, 0x28($v1)
/* D31054 802413D4 27B40010 */  addiu     $s4, $sp, 0x10
/* D31058 802413D8 AFA30020 */  sw        $v1, 0x20($sp)
/* D3105C 802413DC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D31060 802413E0 3C014282 */  lui       $at, 0x4282
/* D31064 802413E4 44810000 */  mtc1      $at, $f0
/* D31068 802413E8 8C63002C */  lw        $v1, 0x2c($v1)
/* D3106C 802413EC 0040982D */  daddu     $s3, $v0, $zero
/* D31070 802413F0 E7A00028 */  swc1      $f0, 0x28($sp)
/* D31074 802413F4 A7A0002C */  sh        $zero, 0x2c($sp)
/* D31078 802413F8 16000005 */  bnez      $s0, .L80241410
/* D3107C 802413FC AFA30024 */   sw       $v1, 0x24($sp)
/* D31080 80241400 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D31084 80241404 30420004 */  andi      $v0, $v0, 4
/* D31088 80241408 10400020 */  beqz      $v0, .L8024148C
/* D3108C 8024140C 00000000 */   nop      
.L80241410:
/* D31090 80241410 2404F7FF */  addiu     $a0, $zero, -0x801
/* D31094 80241414 AE400070 */  sw        $zero, 0x70($s2)
/* D31098 80241418 A6A0008E */  sh        $zero, 0x8e($s5)
/* D3109C 8024141C 8E2200CC */  lw        $v0, 0xcc($s1)
/* D310A0 80241420 8EA30000 */  lw        $v1, ($s5)
/* D310A4 80241424 8C420000 */  lw        $v0, ($v0)
/* D310A8 80241428 00641824 */  and       $v1, $v1, $a0
/* D310AC 8024142C AEA30000 */  sw        $v1, ($s5)
/* D310B0 80241430 AEA20028 */  sw        $v0, 0x28($s5)
/* D310B4 80241434 8E2200D0 */  lw        $v0, 0xd0($s1)
/* D310B8 80241438 8C420034 */  lw        $v0, 0x34($v0)
/* D310BC 8024143C 54400005 */  bnel      $v0, $zero, .L80241454
/* D310C0 80241440 2402FDFF */   addiu    $v0, $zero, -0x201
/* D310C4 80241444 34620200 */  ori       $v0, $v1, 0x200
/* D310C8 80241448 2403FFF7 */  addiu     $v1, $zero, -9
/* D310CC 8024144C 08090517 */  j         .L8024145C
/* D310D0 80241450 00431024 */   and      $v0, $v0, $v1
.L80241454:
/* D310D4 80241454 00621024 */  and       $v0, $v1, $v0
/* D310D8 80241458 34420008 */  ori       $v0, $v0, 8
.L8024145C:
/* D310DC 8024145C AEA20000 */  sw        $v0, ($s5)
/* D310E0 80241460 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D310E4 80241464 30420004 */  andi      $v0, $v0, 4
/* D310E8 80241468 10400007 */  beqz      $v0, .L80241488
/* D310EC 8024146C 24020063 */   addiu    $v0, $zero, 0x63
/* D310F0 80241470 AE420070 */  sw        $v0, 0x70($s2)
/* D310F4 80241474 AE400074 */  sw        $zero, 0x74($s2)
/* D310F8 80241478 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D310FC 8024147C 2403FFFB */  addiu     $v1, $zero, -5
/* D31100 80241480 00431024 */  and       $v0, $v0, $v1
/* D31104 80241484 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241488:
/* D31108 80241488 AE20006C */  sw        $zero, 0x6c($s1)
.L8024148C:
/* D3110C 8024148C 8E420070 */  lw        $v0, 0x70($s2)
/* D31110 80241490 2842001E */  slti      $v0, $v0, 0x1e
/* D31114 80241494 10400009 */  beqz      $v0, .L802414BC
/* D31118 80241498 00000000 */   nop      
/* D3111C 8024149C 8E22006C */  lw        $v0, 0x6c($s1)
/* D31120 802414A0 14400006 */  bnez      $v0, .L802414BC
/* D31124 802414A4 00000000 */   nop      
/* D31128 802414A8 0C0903D2 */  jal       func_80240F48_D30BC8
/* D3112C 802414AC 0240202D */   daddu    $a0, $s2, $zero
/* D31130 802414B0 10400002 */  beqz      $v0, .L802414BC
/* D31134 802414B4 2402001E */   addiu    $v0, $zero, 0x1e
/* D31138 802414B8 AE420070 */  sw        $v0, 0x70($s2)
.L802414BC:
/* D3113C 802414BC 8E430070 */  lw        $v1, 0x70($s2)
/* D31140 802414C0 2C620064 */  sltiu     $v0, $v1, 0x64
/* D31144 802414C4 10400048 */  beqz      $v0, .L802415E8
/* D31148 802414C8 00031080 */   sll      $v0, $v1, 2
/* D3114C 802414CC 3C018024 */  lui       $at, 0x8024
/* D31150 802414D0 00220821 */  addu      $at, $at, $v0
/* D31154 802414D4 8C2264D8 */  lw        $v0, 0x64d8($at)
/* D31158 802414D8 00400008 */  jr        $v0
/* D3115C 802414DC 00000000 */   nop      
/* D31160 802414E0 0240202D */  daddu     $a0, $s2, $zero
/* D31164 802414E4 0260282D */  daddu     $a1, $s3, $zero
/* D31168 802414E8 0C012568 */  jal       func_800495A0
/* D3116C 802414EC 0280302D */   daddu    $a2, $s4, $zero
/* D31170 802414F0 0240202D */  daddu     $a0, $s2, $zero
/* D31174 802414F4 0260282D */  daddu     $a1, $s3, $zero
/* D31178 802414F8 0C0125AE */  jal       func_800496B8
/* D3117C 802414FC 0280302D */   daddu    $a2, $s4, $zero
/* D31180 80241500 0809057A */  j         .L802415E8
/* D31184 80241504 00000000 */   nop      
/* D31188 80241508 0240202D */  daddu     $a0, $s2, $zero
/* D3118C 8024150C 0260282D */  daddu     $a1, $s3, $zero
/* D31190 80241510 0C0126D1 */  jal       func_80049B44
/* D31194 80241514 0280302D */   daddu    $a2, $s4, $zero
/* D31198 80241518 0240202D */  daddu     $a0, $s2, $zero
/* D3119C 8024151C 0260282D */  daddu     $a1, $s3, $zero
/* D311A0 80241520 0C012701 */  jal       func_80049C04
/* D311A4 80241524 0280302D */   daddu    $a2, $s4, $zero
/* D311A8 80241528 0809057A */  j         .L802415E8
/* D311AC 8024152C 00000000 */   nop      
/* D311B0 80241530 0240202D */  daddu     $a0, $s2, $zero
/* D311B4 80241534 0260282D */  daddu     $a1, $s3, $zero
/* D311B8 80241538 0C01278F */  jal       func_80049E3C
/* D311BC 8024153C 0280302D */   daddu    $a2, $s4, $zero
/* D311C0 80241540 0240202D */  daddu     $a0, $s2, $zero
/* D311C4 80241544 0260282D */  daddu     $a1, $s3, $zero
/* D311C8 80241548 0C0127B3 */  jal       func_80049ECC
/* D311CC 8024154C 0280302D */   daddu    $a2, $s4, $zero
/* D311D0 80241550 0809057A */  j         .L802415E8
/* D311D4 80241554 00000000 */   nop      
/* D311D8 80241558 0240202D */  daddu     $a0, $s2, $zero
/* D311DC 8024155C 0260282D */  daddu     $a1, $s3, $zero
/* D311E0 80241560 0C0127DF */  jal       func_80049F7C
/* D311E4 80241564 0280302D */   daddu    $a2, $s4, $zero
/* D311E8 80241568 0240202D */  daddu     $a0, $s2, $zero
/* D311EC 8024156C 0260282D */  daddu     $a1, $s3, $zero
/* D311F0 80241570 0C012849 */  jal       func_8004A124
/* D311F4 80241574 0280302D */   daddu    $a2, $s4, $zero
/* D311F8 80241578 0809057A */  j         .L802415E8
/* D311FC 8024157C 00000000 */   nop      
/* D31200 80241580 0240202D */  daddu     $a0, $s2, $zero
/* D31204 80241584 0260282D */  daddu     $a1, $s3, $zero
/* D31208 80241588 0C0128FA */  jal       func_8004A3E8
/* D3120C 8024158C 0280302D */   daddu    $a2, $s4, $zero
/* D31210 80241590 0809057A */  j         .L802415E8
/* D31214 80241594 00000000 */   nop      
/* D31218 80241598 0C090350 */  jal       func_80240D40_D309C0
/* D3121C 8024159C 0240202D */   daddu    $a0, $s2, $zero
/* D31220 802415A0 0C09036B */  jal       func_80240DAC_D30A2C
/* D31224 802415A4 0240202D */   daddu    $a0, $s2, $zero
/* D31228 802415A8 8E430070 */  lw        $v1, 0x70($s2)
/* D3122C 802415AC 24020020 */  addiu     $v0, $zero, 0x20
/* D31230 802415B0 1462000D */  bne       $v1, $v0, .L802415E8
/* D31234 802415B4 00000000 */   nop      
/* D31238 802415B8 0C090387 */  jal       func_80240E1C_D30A9C
/* D3123C 802415BC 0240202D */   daddu    $a0, $s2, $zero
/* D31240 802415C0 8E430070 */  lw        $v1, 0x70($s2)
/* D31244 802415C4 24020021 */  addiu     $v0, $zero, 0x21
/* D31248 802415C8 14620007 */  bne       $v1, $v0, .L802415E8
/* D3124C 802415CC 00000000 */   nop      
/* D31250 802415D0 0C0903BD */  jal       func_80240EF4_D30B74
/* D31254 802415D4 0240202D */   daddu    $a0, $s2, $zero
/* D31258 802415D8 0809057A */  j         .L802415E8
/* D3125C 802415DC 00000000 */   nop      
/* D31260 802415E0 0C0129CF */  jal       func_8004A73C
/* D31264 802415E4 0240202D */   daddu    $a0, $s2, $zero
.L802415E8:
/* D31268 802415E8 8FBF0048 */  lw        $ra, 0x48($sp)
/* D3126C 802415EC 8FB50044 */  lw        $s5, 0x44($sp)
/* D31270 802415F0 8FB40040 */  lw        $s4, 0x40($sp)
/* D31274 802415F4 8FB3003C */  lw        $s3, 0x3c($sp)
/* D31278 802415F8 8FB20038 */  lw        $s2, 0x38($sp)
/* D3127C 802415FC 8FB10034 */  lw        $s1, 0x34($sp)
/* D31280 80241600 8FB00030 */  lw        $s0, 0x30($sp)
/* D31284 80241604 0000102D */  daddu     $v0, $zero, $zero
/* D31288 80241608 03E00008 */  jr        $ra
/* D3128C 8024160C 27BD0050 */   addiu    $sp, $sp, 0x50
