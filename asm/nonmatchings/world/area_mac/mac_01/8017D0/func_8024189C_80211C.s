.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024189C_80211C
/* 80211C 8024189C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 802120 802418A0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 802124 802418A4 0080982D */  daddu     $s3, $a0, $zero
/* 802128 802418A8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 80212C 802418AC AFB20018 */  sw        $s2, 0x18($sp)
/* 802130 802418B0 AFB10014 */  sw        $s1, 0x14($sp)
/* 802134 802418B4 AFB00010 */  sw        $s0, 0x10($sp)
/* 802138 802418B8 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 80213C 802418BC 8E710148 */  lw        $s1, 0x148($s3)
/* 802140 802418C0 86240008 */  lh        $a0, 8($s1)
/* 802144 802418C4 0C00EABB */  jal       get_npc_unsafe
/* 802148 802418C8 00A0802D */   daddu    $s0, $a1, $zero
/* 80214C 802418CC 8E040020 */  lw        $a0, 0x20($s0)
/* 802150 802418D0 0040902D */  daddu     $s2, $v0, $zero
/* 802154 802418D4 00041FC2 */  srl       $v1, $a0, 0x1f
/* 802158 802418D8 00832021 */  addu      $a0, $a0, $v1
/* 80215C 802418DC 00042043 */  sra       $a0, $a0, 1
/* 802160 802418E0 0C00A67F */  jal       rand_int
/* 802164 802418E4 24840001 */   addiu    $a0, $a0, 1
/* 802168 802418E8 8E030020 */  lw        $v1, 0x20($s0)
/* 80216C 802418EC C64C0038 */  lwc1      $f12, 0x38($s2)
/* 802170 802418F0 000327C2 */  srl       $a0, $v1, 0x1f
/* 802174 802418F4 00641821 */  addu      $v1, $v1, $a0
/* 802178 802418F8 00031843 */  sra       $v1, $v1, 1
/* 80217C 802418FC 00621821 */  addu      $v1, $v1, $v0
/* 802180 80241900 A643008E */  sh        $v1, 0x8e($s2)
/* 802184 80241904 8E2200CC */  lw        $v0, 0xcc($s1)
/* 802188 80241908 C64E0040 */  lwc1      $f14, 0x40($s2)
/* 80218C 8024190C 8C42000C */  lw        $v0, 0xc($v0)
/* 802190 80241910 AE420028 */  sw        $v0, 0x28($s2)
/* 802194 80241914 C6000018 */  lwc1      $f0, 0x18($s0)
/* 802198 80241918 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 80219C 8024191C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 8021A0 80241920 E6400018 */  swc1      $f0, 0x18($s2)
/* 8021A4 80241924 8C460028 */  lw        $a2, 0x28($v0)
/* 8021A8 80241928 0C00A720 */  jal       atan2
/* 8021AC 8024192C 8C470030 */   lw       $a3, 0x30($v0)
/* 8021B0 80241930 46000506 */  mov.s     $f20, $f0
/* 8021B4 80241934 C64C000C */  lwc1      $f12, 0xc($s2)
/* 8021B8 80241938 0C00A70A */  jal       get_clamped_angle_diff
/* 8021BC 8024193C 4600A386 */   mov.s    $f14, $f20
/* 8021C0 80241940 46000086 */  mov.s     $f2, $f0
/* 8021C4 80241944 8E02001C */  lw        $v0, 0x1c($s0)
/* 8021C8 80241948 46001005 */  abs.s     $f0, $f2
/* 8021CC 8024194C 44822000 */  mtc1      $v0, $f4
/* 8021D0 80241950 00000000 */  nop       
/* 8021D4 80241954 46802120 */  cvt.s.w   $f4, $f4
/* 8021D8 80241958 4600203C */  c.lt.s    $f4, $f0
/* 8021DC 8024195C 00000000 */  nop       
/* 8021E0 80241960 4500000D */  bc1f      .L80241998
/* 8021E4 80241964 00000000 */   nop      
/* 8021E8 80241968 44800000 */  mtc1      $zero, $f0
/* 8021EC 8024196C C654000C */  lwc1      $f20, 0xc($s2)
/* 8021F0 80241970 4600103C */  c.lt.s    $f2, $f0
/* 8021F4 80241974 00000000 */  nop       
/* 8021F8 80241978 45000006 */  bc1f      .L80241994
/* 8021FC 8024197C 00021023 */   negu     $v0, $v0
/* 802200 80241980 44820000 */  mtc1      $v0, $f0
/* 802204 80241984 00000000 */  nop       
/* 802208 80241988 46800020 */  cvt.s.w   $f0, $f0
/* 80220C 8024198C 08090666 */  j         .L80241998
/* 802210 80241990 4600A500 */   add.s    $f20, $f20, $f0
.L80241994:
/* 802214 80241994 4604A500 */  add.s     $f20, $f20, $f4
.L80241998:
/* 802218 80241998 0C00A6C9 */  jal       clamp_angle
/* 80221C 8024199C 4600A306 */   mov.s    $f12, $f20
/* 802220 802419A0 2402000D */  addiu     $v0, $zero, 0xd
/* 802224 802419A4 E640000C */  swc1      $f0, 0xc($s2)
/* 802228 802419A8 AE620070 */  sw        $v0, 0x70($s3)
/* 80222C 802419AC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 802230 802419B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 802234 802419B4 8FB20018 */  lw        $s2, 0x18($sp)
/* 802238 802419B8 8FB10014 */  lw        $s1, 0x14($sp)
/* 80223C 802419BC 8FB00010 */  lw        $s0, 0x10($sp)
/* 802240 802419C0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 802244 802419C4 03E00008 */  jr        $ra
/* 802248 802419C8 27BD0030 */   addiu    $sp, $sp, 0x30
