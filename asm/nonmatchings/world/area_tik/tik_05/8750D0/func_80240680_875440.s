.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240680_875440
/* 875440 80240680 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 875444 80240684 AFB00010 */  sw        $s0, 0x10($sp)
/* 875448 80240688 3C108024 */  lui       $s0, %hi(D_80241800_8765C0)
/* 87544C 8024068C 26101800 */  addiu     $s0, $s0, %lo(D_80241800_8765C0)
/* 875450 80240690 AFBF0018 */  sw        $ra, 0x18($sp)
/* 875454 80240694 AFB10014 */  sw        $s1, 0x14($sp)
/* 875458 80240698 8E020000 */  lw        $v0, ($s0)
/* 87545C 8024069C 14400010 */  bnez      $v0, .L802406E0
/* 875460 802406A0 0080882D */   daddu    $s1, $a0, $zero
/* 875464 802406A4 0C00AB39 */  jal       heap_malloc
/* 875468 802406A8 24040040 */   addiu    $a0, $zero, 0x40
/* 87546C 802406AC AE020000 */  sw        $v0, ($s0)
/* 875470 802406B0 0000182D */  daddu     $v1, $zero, $zero
/* 875474 802406B4 0040282D */  daddu     $a1, $v0, $zero
/* 875478 802406B8 0220202D */  daddu     $a0, $s1, $zero
.L802406BC:
/* 87547C 802406BC 8C820084 */  lw        $v0, 0x84($a0)
/* 875480 802406C0 24840004 */  addiu     $a0, $a0, 4
/* 875484 802406C4 24630001 */  addiu     $v1, $v1, 1
/* 875488 802406C8 ACA20000 */  sw        $v0, ($a1)
/* 87548C 802406CC 28620010 */  slti      $v0, $v1, 0x10
/* 875490 802406D0 1440FFFA */  bnez      $v0, .L802406BC
/* 875494 802406D4 24A50004 */   addiu    $a1, $a1, 4
/* 875498 802406D8 080901C7 */  j         .L8024071C
/* 87549C 802406DC 00000000 */   nop
.L802406E0:
/* 8754A0 802406E0 0000182D */  daddu     $v1, $zero, $zero
/* 8754A4 802406E4 0040282D */  daddu     $a1, $v0, $zero
/* 8754A8 802406E8 0220202D */  daddu     $a0, $s1, $zero
.L802406EC:
/* 8754AC 802406EC 8CA20000 */  lw        $v0, ($a1)
/* 8754B0 802406F0 24A50004 */  addiu     $a1, $a1, 4
/* 8754B4 802406F4 24630001 */  addiu     $v1, $v1, 1
/* 8754B8 802406F8 AC820084 */  sw        $v0, 0x84($a0)
/* 8754BC 802406FC 28620010 */  slti      $v0, $v1, 0x10
/* 8754C0 80240700 1440FFFA */  bnez      $v0, .L802406EC
/* 8754C4 80240704 24840004 */   addiu    $a0, $a0, 4
/* 8754C8 80240708 3C108024 */  lui       $s0, %hi(D_80241800_8765C0)
/* 8754CC 8024070C 26101800 */  addiu     $s0, $s0, %lo(D_80241800_8765C0)
/* 8754D0 80240710 0C00AB4B */  jal       heap_free
/* 8754D4 80240714 8E040000 */   lw       $a0, ($s0)
/* 8754D8 80240718 AE000000 */  sw        $zero, ($s0)
.L8024071C:
/* 8754DC 8024071C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 8754E0 80240720 8FB10014 */  lw        $s1, 0x14($sp)
/* 8754E4 80240724 8FB00010 */  lw        $s0, 0x10($sp)
/* 8754E8 80240728 24020002 */  addiu     $v0, $zero, 2
/* 8754EC 8024072C 03E00008 */  jr        $ra
/* 8754F0 80240730 27BD0020 */   addiu    $sp, $sp, 0x20
