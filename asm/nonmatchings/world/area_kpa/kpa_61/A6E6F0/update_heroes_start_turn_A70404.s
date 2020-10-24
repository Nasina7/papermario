.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_heroes_start_turn_A70404
/* A70404 80242024 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* A70408 80242028 AFB40040 */  sw        $s4, 0x40($sp)
/* A7040C 8024202C 0080A02D */  daddu     $s4, $a0, $zero
/* A70410 80242030 AFBF0048 */  sw        $ra, 0x48($sp)
/* A70414 80242034 AFB50044 */  sw        $s5, 0x44($sp)
/* A70418 80242038 AFB3003C */  sw        $s3, 0x3c($sp)
/* A7041C 8024203C AFB20038 */  sw        $s2, 0x38($sp)
/* A70420 80242040 AFB10034 */  sw        $s1, 0x34($sp)
/* A70424 80242044 AFB00030 */  sw        $s0, 0x30($sp)
/* A70428 80242048 8E920148 */  lw        $s2, 0x148($s4)
/* A7042C 8024204C 86440008 */  lh        $a0, 8($s2)
/* A70430 80242050 8E90000C */  lw        $s0, 0xc($s4)
/* A70434 80242054 0C00EABB */  jal       get_npc_unsafe
/* A70438 80242058 00A0882D */   daddu    $s1, $a1, $zero
/* A7043C 8024205C 0280202D */  daddu     $a0, $s4, $zero
/* A70440 80242060 8E050000 */  lw        $a1, ($s0)
/* A70444 80242064 0C0B1EAF */  jal       get_variable
/* A70448 80242068 0040A82D */   daddu    $s5, $v0, $zero
/* A7044C 8024206C AFA00010 */  sw        $zero, 0x10($sp)
/* A70450 80242070 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A70454 80242074 8C630030 */  lw        $v1, 0x30($v1)
/* A70458 80242078 AFA30014 */  sw        $v1, 0x14($sp)
/* A7045C 8024207C 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A70460 80242080 8C63001C */  lw        $v1, 0x1c($v1)
/* A70464 80242084 AFA30018 */  sw        $v1, 0x18($sp)
/* A70468 80242088 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A7046C 8024208C 8C630024 */  lw        $v1, 0x24($v1)
/* A70470 80242090 AFA3001C */  sw        $v1, 0x1c($sp)
/* A70474 80242094 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A70478 80242098 8C630028 */  lw        $v1, 0x28($v1)
/* A7047C 8024209C 27B30010 */  addiu     $s3, $sp, 0x10
/* A70480 802420A0 AFA30020 */  sw        $v1, 0x20($sp)
/* A70484 802420A4 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A70488 802420A8 3C0142F0 */  lui       $at, 0x42f0
/* A7048C 802420AC 44810000 */  mtc1      $at, $f0
/* A70490 802420B0 8C63002C */  lw        $v1, 0x2c($v1)
/* A70494 802420B4 0040802D */  daddu     $s0, $v0, $zero
/* A70498 802420B8 E7A00028 */  swc1      $f0, 0x28($sp)
/* A7049C 802420BC A7A0002C */  sh        $zero, 0x2c($sp)
/* A704A0 802420C0 12200019 */  beqz      $s1, .L80242128
/* A704A4 802420C4 AFA30024 */   sw       $v1, 0x24($sp)
/* A704A8 802420C8 8EA20000 */  lw        $v0, ($s5)
/* A704AC 802420CC 2403FDFF */  addiu     $v1, $zero, -0x201
/* A704B0 802420D0 00431024 */  and       $v0, $v0, $v1
/* A704B4 802420D4 34420008 */  ori       $v0, $v0, 8
/* A704B8 802420D8 3C030020 */  lui       $v1, 0x20
/* A704BC 802420DC 00431025 */  or        $v0, $v0, $v1
/* A704C0 802420E0 AEA20000 */  sw        $v0, ($s5)
/* A704C4 802420E4 8E420000 */  lw        $v0, ($s2)
/* A704C8 802420E8 00431025 */  or        $v0, $v0, $v1
/* A704CC 802420EC AE420000 */  sw        $v0, ($s2)
/* A704D0 802420F0 C6A0003C */  lwc1      $f0, 0x3c($s5)
/* A704D4 802420F4 3C014059 */  lui       $at, 0x4059
/* A704D8 802420F8 44811800 */  mtc1      $at, $f3
/* A704DC 802420FC 44801000 */  mtc1      $zero, $f2
/* A704E0 80242100 46000021 */  cvt.d.s   $f0, $f0
/* A704E4 80242104 46220002 */  mul.d     $f0, $f0, $f2
/* A704E8 80242108 00000000 */  nop       
/* A704EC 8024210C 2402000A */  addiu     $v0, $zero, 0xa
/* A704F0 80242110 AE40006C */  sw        $zero, 0x6c($s2)
/* A704F4 80242114 AE400074 */  sw        $zero, 0x74($s2)
/* A704F8 80242118 4620010D */  trunc.w.d $f4, $f0
/* A704FC 8024211C E6440070 */  swc1      $f4, 0x70($s2)
/* A70500 80242120 A6A0008E */  sh        $zero, 0x8e($s5)
/* A70504 80242124 AE820070 */  sw        $v0, 0x70($s4)
.L80242128:
/* A70508 80242128 2402FFFB */  addiu     $v0, $zero, -5
/* A7050C 8024212C A2A200AB */  sb        $v0, 0xab($s5)
/* A70510 80242130 8E4300B0 */  lw        $v1, 0xb0($s2)
/* A70514 80242134 30620004 */  andi      $v0, $v1, 4
/* A70518 80242138 10400007 */  beqz      $v0, .L80242158
/* A7051C 8024213C 00000000 */   nop      
/* A70520 80242140 824200B4 */  lb        $v0, 0xb4($s2)
/* A70524 80242144 14400053 */  bnez      $v0, .L80242294
/* A70528 80242148 0000102D */   daddu    $v0, $zero, $zero
/* A7052C 8024214C 2402FFFB */  addiu     $v0, $zero, -5
/* A70530 80242150 00621024 */  and       $v0, $v1, $v0
/* A70534 80242154 AE4200B0 */  sw        $v0, 0xb0($s2)
.L80242158:
/* A70538 80242158 8E820070 */  lw        $v0, 0x70($s4)
/* A7053C 8024215C 2443FFF6 */  addiu     $v1, $v0, -0xa
/* A70540 80242160 2C620029 */  sltiu     $v0, $v1, 0x29
/* A70544 80242164 1040004A */  beqz      $v0, .L80242290
/* A70548 80242168 00031080 */   sll      $v0, $v1, 2
/* A7054C 8024216C 3C018024 */  lui       $at, 0x8024
/* A70550 80242170 00220821 */  addu      $at, $at, $v0
/* A70554 80242174 8C223D98 */  lw        $v0, 0x3d98($at)
/* A70558 80242178 00400008 */  jr        $v0
/* A7055C 8024217C 00000000 */   nop      
/* A70560 80242180 0280202D */  daddu     $a0, $s4, $zero
/* A70564 80242184 0200282D */  daddu     $a1, $s0, $zero
/* A70568 80242188 0C090471 */  jal       func_802411C4_A6F5A4
/* A7056C 8024218C 0260302D */   daddu    $a2, $s3, $zero
/* A70570 80242190 0280202D */  daddu     $a0, $s4, $zero
/* A70574 80242194 0200282D */  daddu     $a1, $s0, $zero
/* A70578 80242198 0C090480 */  jal       func_80241200_A6F5E0
/* A7057C 8024219C 0260302D */   daddu    $a2, $s3, $zero
/* A70580 802421A0 080908A5 */  j         .L80242294
/* A70584 802421A4 0000102D */   daddu    $v0, $zero, $zero
/* A70588 802421A8 0280202D */  daddu     $a0, $s4, $zero
/* A7058C 802421AC 0200282D */  daddu     $a1, $s0, $zero
/* A70590 802421B0 0C0904E3 */  jal       func_8024138C_A6F76C
/* A70594 802421B4 0260302D */   daddu    $a2, $s3, $zero
/* A70598 802421B8 8E830070 */  lw        $v1, 0x70($s4)
/* A7059C 802421BC 24020010 */  addiu     $v0, $zero, 0x10
/* A705A0 802421C0 14620034 */  bne       $v1, $v0, .L80242294
/* A705A4 802421C4 0000102D */   daddu    $v0, $zero, $zero
/* A705A8 802421C8 0280202D */  daddu     $a0, $s4, $zero
/* A705AC 802421CC 0200282D */  daddu     $a1, $s0, $zero
/* A705B0 802421D0 0C0905DF */  jal       func_8024177C_A6FB5C
/* A705B4 802421D4 0260302D */   daddu    $a2, $s3, $zero
/* A705B8 802421D8 8E830070 */  lw        $v1, 0x70($s4)
/* A705BC 802421DC 24020011 */  addiu     $v0, $zero, 0x11
/* A705C0 802421E0 1462002C */  bne       $v1, $v0, .L80242294
/* A705C4 802421E4 0000102D */   daddu    $v0, $zero, $zero
/* A705C8 802421E8 0280202D */  daddu     $a0, $s4, $zero
/* A705CC 802421EC 0200282D */  daddu     $a1, $s0, $zero
/* A705D0 802421F0 0C09061C */  jal       func_80241870_A6FC50
/* A705D4 802421F4 0260302D */   daddu    $a2, $s3, $zero
/* A705D8 802421F8 080908A5 */  j         .L80242294
/* A705DC 802421FC 0000102D */   daddu    $v0, $zero, $zero
/* A705E0 80242200 0280202D */  daddu     $a0, $s4, $zero
/* A705E4 80242204 0200282D */  daddu     $a1, $s0, $zero
/* A705E8 80242208 0C0906AD */  jal       func_80241AB4_A6FE94
/* A705EC 8024220C 0260302D */   daddu    $a2, $s3, $zero
/* A705F0 80242210 080908A5 */  j         .L80242294
/* A705F4 80242214 0000102D */   daddu    $v0, $zero, $zero
/* A705F8 80242218 0280202D */  daddu     $a0, $s4, $zero
/* A705FC 8024221C 0200282D */  daddu     $a1, $s0, $zero
/* A70600 80242220 0C0906BC */  jal       func_80241AF0_A6FED0
/* A70604 80242224 0260302D */   daddu    $a2, $s3, $zero
/* A70608 80242228 080908A5 */  j         .L80242294
/* A7060C 8024222C 0000102D */   daddu    $v0, $zero, $zero
/* A70610 80242230 0280202D */  daddu     $a0, $s4, $zero
/* A70614 80242234 0200282D */  daddu     $a1, $s0, $zero
/* A70618 80242238 0C09072F */  jal       func_80241CBC_A7009C
/* A7061C 8024223C 0260302D */   daddu    $a2, $s3, $zero
/* A70620 80242240 080908A5 */  j         .L80242294
/* A70624 80242244 0000102D */   daddu    $v0, $zero, $zero
/* A70628 80242248 0280202D */  daddu     $a0, $s4, $zero
/* A7062C 8024224C 0200282D */  daddu     $a1, $s0, $zero
/* A70630 80242250 0C09074A */  jal       func_80241D28_A70108
/* A70634 80242254 0260302D */   daddu    $a2, $s3, $zero
/* A70638 80242258 8E830070 */  lw        $v1, 0x70($s4)
/* A7063C 8024225C 24020018 */  addiu     $v0, $zero, 0x18
/* A70640 80242260 1462000C */  bne       $v1, $v0, .L80242294
/* A70644 80242264 0000102D */   daddu    $v0, $zero, $zero
/* A70648 80242268 0280202D */  daddu     $a0, $s4, $zero
/* A7064C 8024226C 0200282D */  daddu     $a1, $s0, $zero
/* A70650 80242270 0C090797 */  jal       func_80241E5C_A7023C
/* A70654 80242274 0260302D */   daddu    $a2, $s3, $zero
/* A70658 80242278 080908A5 */  j         .L80242294
/* A7065C 8024227C 0000102D */   daddu    $v0, $zero, $zero
/* A70660 80242280 0280202D */  daddu     $a0, $s4, $zero
/* A70664 80242284 0200282D */  daddu     $a1, $s0, $zero
/* A70668 80242288 0C0907D3 */  jal       func_80241F4C_A7032C
/* A7066C 8024228C 0260302D */   daddu    $a2, $s3, $zero
.L80242290:
/* A70670 80242290 0000102D */  daddu     $v0, $zero, $zero
.L80242294:
/* A70674 80242294 8FBF0048 */  lw        $ra, 0x48($sp)
/* A70678 80242298 8FB50044 */  lw        $s5, 0x44($sp)
/* A7067C 8024229C 8FB40040 */  lw        $s4, 0x40($sp)
/* A70680 802422A0 8FB3003C */  lw        $s3, 0x3c($sp)
/* A70684 802422A4 8FB20038 */  lw        $s2, 0x38($sp)
/* A70688 802422A8 8FB10034 */  lw        $s1, 0x34($sp)
/* A7068C 802422AC 8FB00030 */  lw        $s0, 0x30($sp)
/* A70690 802422B0 03E00008 */  jr        $ra
/* A70694 802422B4 27BD0050 */   addiu    $sp, $sp, 0x50
