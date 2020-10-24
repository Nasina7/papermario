.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408A8_B288D8
/* B288D8 802408A8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B288DC 802408AC AFB3001C */  sw        $s3, 0x1c($sp)
/* B288E0 802408B0 0080982D */  daddu     $s3, $a0, $zero
/* B288E4 802408B4 AFBF0020 */  sw        $ra, 0x20($sp)
/* B288E8 802408B8 AFB20018 */  sw        $s2, 0x18($sp)
/* B288EC 802408BC AFB10014 */  sw        $s1, 0x14($sp)
/* B288F0 802408C0 AFB00010 */  sw        $s0, 0x10($sp)
/* B288F4 802408C4 8E720148 */  lw        $s2, 0x148($s3)
/* B288F8 802408C8 86440008 */  lh        $a0, 8($s2)
/* B288FC 802408CC 0C00EABB */  jal       get_npc_unsafe
/* B28900 802408D0 00A0882D */   daddu    $s1, $a1, $zero
/* B28904 802408D4 8E240008 */  lw        $a0, 8($s1)
/* B28908 802408D8 0040802D */  daddu     $s0, $v0, $zero
/* B2890C 802408DC 00041FC2 */  srl       $v1, $a0, 0x1f
/* B28910 802408E0 00832021 */  addu      $a0, $a0, $v1
/* B28914 802408E4 00042043 */  sra       $a0, $a0, 1
/* B28918 802408E8 0C00A67F */  jal       rand_int
/* B2891C 802408EC 24840001 */   addiu    $a0, $a0, 1
/* B28920 802408F0 8E230008 */  lw        $v1, 8($s1)
/* B28924 802408F4 240400B4 */  addiu     $a0, $zero, 0xb4
/* B28928 802408F8 00032FC2 */  srl       $a1, $v1, 0x1f
/* B2892C 802408FC 00651821 */  addu      $v1, $v1, $a1
/* B28930 80240900 00031843 */  sra       $v1, $v1, 1
/* B28934 80240904 00621821 */  addu      $v1, $v1, $v0
/* B28938 80240908 0C00A67F */  jal       rand_int
/* B2893C 8024090C A603008E */   sh       $v1, 0x8e($s0)
/* B28940 80240910 C60C000C */  lwc1      $f12, 0xc($s0)
/* B28944 80240914 44820000 */  mtc1      $v0, $f0
/* B28948 80240918 00000000 */  nop       
/* B2894C 8024091C 46800020 */  cvt.s.w   $f0, $f0
/* B28950 80240920 46006300 */  add.s     $f12, $f12, $f0
/* B28954 80240924 3C0142B4 */  lui       $at, 0x42b4
/* B28958 80240928 44810000 */  mtc1      $at, $f0
/* B2895C 8024092C 0C00A6C9 */  jal       clamp_angle
/* B28960 80240930 46006301 */   sub.s    $f12, $f12, $f0
/* B28964 80240934 E600000C */  swc1      $f0, 0xc($s0)
/* B28968 80240938 8E4200CC */  lw        $v0, 0xcc($s2)
/* B2896C 8024093C 8C420000 */  lw        $v0, ($v0)
/* B28970 80240940 AE020028 */  sw        $v0, 0x28($s0)
/* B28974 80240944 24020003 */  addiu     $v0, $zero, 3
/* B28978 80240948 AE620070 */  sw        $v0, 0x70($s3)
/* B2897C 8024094C 8FBF0020 */  lw        $ra, 0x20($sp)
/* B28980 80240950 8FB3001C */  lw        $s3, 0x1c($sp)
/* B28984 80240954 8FB20018 */  lw        $s2, 0x18($sp)
/* B28988 80240958 8FB10014 */  lw        $s1, 0x14($sp)
/* B2898C 8024095C 8FB00010 */  lw        $s0, 0x10($sp)
/* B28990 80240960 03E00008 */  jr        $ra
/* B28994 80240964 27BD0028 */   addiu    $sp, $sp, 0x28
