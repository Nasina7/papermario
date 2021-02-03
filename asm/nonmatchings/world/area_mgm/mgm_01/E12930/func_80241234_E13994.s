.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241234_E13994
/* E13994 80241234 27BDFF88 */  addiu     $sp, $sp, -0x78
/* E13998 80241238 AFB5006C */  sw        $s5, 0x6c($sp)
/* E1399C 8024123C 0080A82D */  daddu     $s5, $a0, $zero
/* E139A0 80241240 AFB00058 */  sw        $s0, 0x58($sp)
/* E139A4 80241244 00A0802D */  daddu     $s0, $a1, $zero
/* E139A8 80241248 0000202D */  daddu     $a0, $zero, $zero
/* E139AC 8024124C AFBF0070 */  sw        $ra, 0x70($sp)
/* E139B0 80241250 AFB40068 */  sw        $s4, 0x68($sp)
/* E139B4 80241254 AFB30064 */  sw        $s3, 0x64($sp)
/* E139B8 80241258 AFB20060 */  sw        $s2, 0x60($sp)
/* E139BC 8024125C 0C00FB3A */  jal       get_enemy
/* E139C0 80241260 AFB1005C */   sw       $s1, 0x5c($sp)
/* E139C4 80241264 27A30028 */  addiu     $v1, $sp, 0x28
/* E139C8 80241268 8C540080 */  lw        $s4, 0x80($v0)
/* E139CC 8024126C 3C028024 */  lui       $v0, %hi(D_802435E8_E15D48)
/* E139D0 80241270 244235E8 */  addiu     $v0, $v0, %lo(D_802435E8_E15D48)
/* E139D4 80241274 24440020 */  addiu     $a0, $v0, 0x20
.L80241278:
/* E139D8 80241278 8C480000 */  lw        $t0, ($v0)
/* E139DC 8024127C 8C490004 */  lw        $t1, 4($v0)
/* E139E0 80241280 8C4A0008 */  lw        $t2, 8($v0)
/* E139E4 80241284 8C4B000C */  lw        $t3, 0xc($v0)
/* E139E8 80241288 AC680000 */  sw        $t0, ($v1)
/* E139EC 8024128C AC690004 */  sw        $t1, 4($v1)
/* E139F0 80241290 AC6A0008 */  sw        $t2, 8($v1)
/* E139F4 80241294 AC6B000C */  sw        $t3, 0xc($v1)
/* E139F8 80241298 24420010 */  addiu     $v0, $v0, 0x10
/* E139FC 8024129C 1444FFF6 */  bne       $v0, $a0, .L80241278
/* E13A00 802412A0 24630010 */   addiu    $v1, $v1, 0x10
/* E13A04 802412A4 8C480000 */  lw        $t0, ($v0)
/* E13A08 802412A8 8C490004 */  lw        $t1, 4($v0)
/* E13A0C 802412AC 8C4A0008 */  lw        $t2, 8($v0)
/* E13A10 802412B0 AC680000 */  sw        $t0, ($v1)
/* E13A14 802412B4 AC690004 */  sw        $t1, 4($v1)
/* E13A18 802412B8 12000044 */  beqz      $s0, .L802413CC
/* E13A1C 802412BC AC6A0008 */   sw       $t2, 8($v1)
/* E13A20 802412C0 0C00A67F */  jal       rand_int
/* E13A24 802412C4 240403E8 */   addiu    $a0, $zero, 0x3e8
/* E13A28 802412C8 0040182D */  daddu     $v1, $v0, $zero
/* E13A2C 802412CC 04620001 */  bltzl     $v1, .L802412D4
/* E13A30 802412D0 24620003 */   addiu    $v0, $v1, 3
.L802412D4:
/* E13A34 802412D4 00022083 */  sra       $a0, $v0, 2
/* E13A38 802412D8 00041080 */  sll       $v0, $a0, 2
/* E13A3C 802412DC 00622023 */  subu      $a0, $v1, $v0
/* E13A40 802412E0 0000882D */  daddu     $s1, $zero, $zero
/* E13A44 802412E4 3C058024 */  lui       $a1, %hi(D_80241B9C_E142FC)
/* E13A48 802412E8 24A51B9C */  addiu     $a1, $a1, %lo(D_80241B9C_E142FC)
/* E13A4C 802412EC 00041040 */  sll       $v0, $a0, 1
/* E13A50 802412F0 00441021 */  addu      $v0, $v0, $a0
/* E13A54 802412F4 00021080 */  sll       $v0, $v0, 2
/* E13A58 802412F8 00441023 */  subu      $v0, $v0, $a0
/* E13A5C 802412FC 00022080 */  sll       $a0, $v0, 2
/* E13A60 80241300 0280182D */  daddu     $v1, $s4, $zero
.L80241304:
/* E13A64 80241304 00851021 */  addu      $v0, $a0, $a1
/* E13A68 80241308 24840004 */  addiu     $a0, $a0, 4
/* E13A6C 8024130C 8C420000 */  lw        $v0, ($v0)
/* E13A70 80241310 26310001 */  addiu     $s1, $s1, 1
/* E13A74 80241314 AC62001C */  sw        $v0, 0x1c($v1)
/* E13A78 80241318 2A22000B */  slti      $v0, $s1, 0xb
/* E13A7C 8024131C 1440FFF9 */  bnez      $v0, .L80241304
/* E13A80 80241320 24630004 */   addiu    $v1, $v1, 4
/* E13A84 80241324 0000882D */  daddu     $s1, $zero, $zero
/* E13A88 80241328 3C122E8B */  lui       $s2, 0x2e8b
/* E13A8C 8024132C 3652A2E9 */  ori       $s2, $s2, 0xa2e9
.L80241330:
/* E13A90 80241330 0C00A67F */  jal       rand_int
/* E13A94 80241334 24042710 */   addiu    $a0, $zero, 0x2710
/* E13A98 80241338 00520018 */  mult      $v0, $s2
/* E13A9C 8024133C 24042710 */  addiu     $a0, $zero, 0x2710
/* E13AA0 80241340 00021FC3 */  sra       $v1, $v0, 0x1f
/* E13AA4 80241344 00004010 */  mfhi      $t0
/* E13AA8 80241348 00082843 */  sra       $a1, $t0, 1
/* E13AAC 8024134C 00A38023 */  subu      $s0, $a1, $v1
/* E13AB0 80241350 00101840 */  sll       $v1, $s0, 1
/* E13AB4 80241354 00701821 */  addu      $v1, $v1, $s0
/* E13AB8 80241358 00031880 */  sll       $v1, $v1, 2
/* E13ABC 8024135C 00701823 */  subu      $v1, $v1, $s0
/* E13AC0 80241360 0C00A67F */  jal       rand_int
/* E13AC4 80241364 00438023 */   subu     $s0, $v0, $v1
/* E13AC8 80241368 00520018 */  mult      $v0, $s2
/* E13ACC 8024136C 00021FC3 */  sra       $v1, $v0, 0x1f
/* E13AD0 80241370 00004010 */  mfhi      $t0
/* E13AD4 80241374 00082043 */  sra       $a0, $t0, 1
/* E13AD8 80241378 00832023 */  subu      $a0, $a0, $v1
/* E13ADC 8024137C 00041840 */  sll       $v1, $a0, 1
/* E13AE0 80241380 00641821 */  addu      $v1, $v1, $a0
/* E13AE4 80241384 00031880 */  sll       $v1, $v1, 2
/* E13AE8 80241388 00641823 */  subu      $v1, $v1, $a0
/* E13AEC 8024138C 00432023 */  subu      $a0, $v0, $v1
/* E13AF0 80241390 12040009 */  beq       $s0, $a0, .L802413B8
/* E13AF4 80241394 26310001 */   addiu    $s1, $s1, 1
/* E13AF8 80241398 00041880 */  sll       $v1, $a0, 2
/* E13AFC 8024139C 02831821 */  addu      $v1, $s4, $v1
/* E13B00 802413A0 00101080 */  sll       $v0, $s0, 2
/* E13B04 802413A4 02821021 */  addu      $v0, $s4, $v0
/* E13B08 802413A8 8C44001C */  lw        $a0, 0x1c($v0)
/* E13B0C 802413AC 8C65001C */  lw        $a1, 0x1c($v1)
/* E13B10 802413B0 AC64001C */  sw        $a0, 0x1c($v1)
/* E13B14 802413B4 AC45001C */  sw        $a1, 0x1c($v0)
.L802413B8:
/* E13B18 802413B8 2A2203E8 */  slti      $v0, $s1, 0x3e8
/* E13B1C 802413BC 1440FFDC */  bnez      $v0, .L80241330
/* E13B20 802413C0 00000000 */   nop
/* E13B24 802413C4 AEA00070 */  sw        $zero, 0x70($s5)
/* E13B28 802413C8 AEA00074 */  sw        $zero, 0x74($s5)
.L802413CC:
/* E13B2C 802413CC 8EA20070 */  lw        $v0, 0x70($s5)
/* E13B30 802413D0 2442FFFF */  addiu     $v0, $v0, -1
/* E13B34 802413D4 1C400041 */  bgtz      $v0, .L802414DC
/* E13B38 802413D8 AEA20070 */   sw       $v0, 0x70($s5)
/* E13B3C 802413DC 3C138024 */  lui       $s3, %hi(D_80241AC8_E14228)
/* E13B40 802413E0 26731AC8 */  addiu     $s3, $s3, %lo(D_80241AC8_E14228)
/* E13B44 802413E4 3C128024 */  lui       $s2, %hi(D_80241AD4_E14234)
/* E13B48 802413E8 26521AD4 */  addiu     $s2, $s2, %lo(D_80241AD4_E14234)
/* E13B4C 802413EC 3C118024 */  lui       $s1, %hi(D_80241AE0_E14240)
/* E13B50 802413F0 26311AE0 */  addiu     $s1, $s1, %lo(D_80241AE0_E14240)
/* E13B54 802413F4 8EB00074 */  lw        $s0, 0x74($s5)
/* E13B58 802413F8 3C04802F */  lui       $a0, %hi(D_802EA0C4)
/* E13B5C 802413FC 2484A0C4 */  addiu     $a0, $a0, %lo(D_802EA0C4)
/* E13B60 80241400 02139821 */  addu      $s3, $s0, $s3
/* E13B64 80241404 02129021 */  addu      $s2, $s0, $s2
/* E13B68 80241408 02118821 */  addu      $s1, $s0, $s1
/* E13B6C 8024140C 82650000 */  lb        $a1, ($s3)
/* E13B70 80241410 82460000 */  lb        $a2, ($s2)
/* E13B74 80241414 82270000 */  lb        $a3, ($s1)
/* E13B78 80241418 3C028000 */  lui       $v0, 0x8000
/* E13B7C 8024141C AFA00010 */  sw        $zero, 0x10($sp)
/* E13B80 80241420 AFA00014 */  sw        $zero, 0x14($sp)
/* E13B84 80241424 AFA00018 */  sw        $zero, 0x18($sp)
/* E13B88 80241428 AFA0001C */  sw        $zero, 0x1c($sp)
/* E13B8C 8024142C 0C044631 */  jal       create_entity
/* E13B90 80241430 AFA20020 */   sw       $v0, 0x20($sp)
/* E13B94 80241434 0040202D */  daddu     $a0, $v0, $zero
/* E13B98 80241438 00101040 */  sll       $v0, $s0, 1
/* E13B9C 8024143C 00501021 */  addu      $v0, $v0, $s0
/* E13BA0 80241440 000210C0 */  sll       $v0, $v0, 3
/* E13BA4 80241444 00501023 */  subu      $v0, $v0, $s0
/* E13BA8 80241448 00021080 */  sll       $v0, $v0, 2
/* E13BAC 8024144C 02821021 */  addu      $v0, $s4, $v0
/* E13BB0 80241450 0C04417A */  jal       get_entity_by_index
/* E13BB4 80241454 AC440088 */   sw       $a0, 0x88($v0)
/* E13BB8 80241458 00108080 */  sll       $s0, $s0, 2
/* E13BBC 8024145C 03B01821 */  addu      $v1, $sp, $s0
/* E13BC0 80241460 8C630028 */  lw        $v1, 0x28($v1)
/* E13BC4 80241464 3C0141B8 */  lui       $at, 0x41b8
/* E13BC8 80241468 44810000 */  mtc1      $at, $f0
/* E13BCC 8024146C AC430028 */  sw        $v1, 0x28($v0)
/* E13BD0 80241470 82650000 */  lb        $a1, ($s3)
/* E13BD4 80241474 82420000 */  lb        $v0, ($s2)
/* E13BD8 80241478 82230000 */  lb        $v1, ($s1)
/* E13BDC 8024147C 44851000 */  mtc1      $a1, $f2
/* E13BE0 80241480 00000000 */  nop
/* E13BE4 80241484 468010A0 */  cvt.s.w   $f2, $f2
/* E13BE8 80241488 2442000D */  addiu     $v0, $v0, 0xd
/* E13BEC 8024148C 44051000 */  mfc1      $a1, $f2
/* E13BF0 80241490 44821000 */  mtc1      $v0, $f2
/* E13BF4 80241494 00000000 */  nop
/* E13BF8 80241498 468010A0 */  cvt.s.w   $f2, $f2
/* E13BFC 8024149C 24630005 */  addiu     $v1, $v1, 5
/* E13C00 802414A0 44061000 */  mfc1      $a2, $f2
/* E13C04 802414A4 44831000 */  mtc1      $v1, $f2
/* E13C08 802414A8 00000000 */  nop
/* E13C0C 802414AC 468010A0 */  cvt.s.w   $f2, $f2
/* E13C10 802414B0 44071000 */  mfc1      $a3, $f2
/* E13C14 802414B4 24040003 */  addiu     $a0, $zero, 3
/* E13C18 802414B8 0C01BFBC */  jal       func_8006FEF0
/* E13C1C 802414BC E7A00010 */   swc1     $f0, 0x10($sp)
/* E13C20 802414C0 0C05272D */  jal       play_sound
/* E13C24 802414C4 24040213 */   addiu    $a0, $zero, 0x213
/* E13C28 802414C8 8EA20074 */  lw        $v0, 0x74($s5)
/* E13C2C 802414CC 24030003 */  addiu     $v1, $zero, 3
/* E13C30 802414D0 AEA30070 */  sw        $v1, 0x70($s5)
/* E13C34 802414D4 24420001 */  addiu     $v0, $v0, 1
/* E13C38 802414D8 AEA20074 */  sw        $v0, 0x74($s5)
.L802414DC:
/* E13C3C 802414DC 8EA20074 */  lw        $v0, 0x74($s5)
/* E13C40 802414E0 8FBF0070 */  lw        $ra, 0x70($sp)
/* E13C44 802414E4 8FB5006C */  lw        $s5, 0x6c($sp)
/* E13C48 802414E8 8FB40068 */  lw        $s4, 0x68($sp)
/* E13C4C 802414EC 8FB30064 */  lw        $s3, 0x64($sp)
/* E13C50 802414F0 8FB20060 */  lw        $s2, 0x60($sp)
/* E13C54 802414F4 8FB1005C */  lw        $s1, 0x5c($sp)
/* E13C58 802414F8 8FB00058 */  lw        $s0, 0x58($sp)
/* E13C5C 802414FC 2842000B */  slti      $v0, $v0, 0xb
/* E13C60 80241500 38420001 */  xori      $v0, $v0, 1
/* E13C64 80241504 00021040 */  sll       $v0, $v0, 1
/* E13C68 80241508 03E00008 */  jr        $ra
/* E13C6C 8024150C 27BD0078 */   addiu    $sp, $sp, 0x78
