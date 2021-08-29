.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802185D0_660D20
/* 660D20 802185D0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 660D24 802185D4 AFB00010 */  sw        $s0, 0x10($sp)
/* 660D28 802185D8 0080802D */  daddu     $s0, $a0, $zero
/* 660D2C 802185DC AFBF001C */  sw        $ra, 0x1c($sp)
/* 660D30 802185E0 AFB20018 */  sw        $s2, 0x18($sp)
/* 660D34 802185E4 AFB10014 */  sw        $s1, 0x14($sp)
/* 660D38 802185E8 8E040148 */  lw        $a0, 0x148($s0)
/* 660D3C 802185EC 0C09A75B */  jal       get_actor
/* 660D40 802185F0 8E11000C */   lw       $s1, 0xc($s0)
/* 660D44 802185F4 0040902D */  daddu     $s2, $v0, $zero
/* 660D48 802185F8 0240202D */  daddu     $a0, $s2, $zero
/* 660D4C 802185FC 0C099117 */  jal       get_actor_part
/* 660D50 80218600 24050001 */   addiu    $a1, $zero, 1
/* 660D54 80218604 0200202D */  daddu     $a0, $s0, $zero
/* 660D58 80218608 8E250000 */  lw        $a1, ($s1)
/* 660D5C 8021860C 0C0B1EAF */  jal       evt_get_variable
/* 660D60 80218610 0040802D */   daddu    $s0, $v0, $zero
/* 660D64 80218614 C600004C */  lwc1      $f0, 0x4c($s0)
/* 660D68 80218618 3C0141C0 */  lui       $at, 0x41c0
/* 660D6C 8021861C 44811000 */  mtc1      $at, $f2
/* 660D70 80218620 00000000 */  nop
/* 660D74 80218624 46020002 */  mul.s     $f0, $f0, $f2
/* 660D78 80218628 00000000 */  nop
/* 660D7C 8021862C 0040182D */  daddu     $v1, $v0, $zero
/* 660D80 80218630 8C62000C */  lw        $v0, 0xc($v1)
/* 660D84 80218634 E4400010 */  swc1      $f0, 0x10($v0)
/* 660D88 80218638 C6000050 */  lwc1      $f0, 0x50($s0)
/* 660D8C 8021863C 46020002 */  mul.s     $f0, $f0, $f2
/* 660D90 80218640 00000000 */  nop
/* 660D94 80218644 8C62000C */  lw        $v0, 0xc($v1)
/* 660D98 80218648 E4400014 */  swc1      $f0, 0x14($v0)
/* 660D9C 8021864C 8E020000 */  lw        $v0, ($s0)
/* 660DA0 80218650 30420001 */  andi      $v0, $v0, 1
/* 660DA4 80218654 10400009 */  beqz      $v0, .L8021867C
/* 660DA8 80218658 00000000 */   nop
/* 660DAC 8021865C 8C62000C */  lw        $v0, 0xc($v1)
/* 660DB0 80218660 C6400144 */  lwc1      $f0, 0x144($s2)
/* 660DB4 80218664 E4400004 */  swc1      $f0, 4($v0)
/* 660DB8 80218668 8C62000C */  lw        $v0, 0xc($v1)
/* 660DBC 8021866C 3C01C47A */  lui       $at, 0xc47a
/* 660DC0 80218670 44810000 */  mtc1      $at, $f0
/* 660DC4 80218674 080861A5 */  j         .L80218694
/* 660DC8 80218678 E4400008 */   swc1     $f0, 8($v0)
.L8021867C:
/* 660DCC 8021867C 8C62000C */  lw        $v0, 0xc($v1)
/* 660DD0 80218680 C6400144 */  lwc1      $f0, 0x144($s2)
/* 660DD4 80218684 E4400004 */  swc1      $f0, 4($v0)
/* 660DD8 80218688 8C62000C */  lw        $v0, 0xc($v1)
/* 660DDC 8021868C C6400148 */  lwc1      $f0, 0x148($s2)
/* 660DE0 80218690 E4400008 */  swc1      $f0, 8($v0)
.L80218694:
/* 660DE4 80218694 8C62000C */  lw        $v0, 0xc($v1)
/* 660DE8 80218698 C640014C */  lwc1      $f0, 0x14c($s2)
/* 660DEC 8021869C E440000C */  swc1      $f0, 0xc($v0)
/* 660DF0 802186A0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 660DF4 802186A4 8FB20018 */  lw        $s2, 0x18($sp)
/* 660DF8 802186A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 660DFC 802186AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 660E00 802186B0 0000102D */  daddu     $v0, $zero, $zero
/* 660E04 802186B4 03E00008 */  jr        $ra
/* 660E08 802186B8 27BD0020 */   addiu    $sp, $sp, 0x20
/* 660E0C 802186BC 00000000 */  nop
