.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802417FC_832FFC
/* 832FFC 802417FC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 833000 80241800 AFBF0010 */  sw        $ra, 0x10($sp)
/* 833004 80241804 8C82000C */  lw        $v0, 0xc($a0)
/* 833008 80241808 0C0B1EAF */  jal       get_variable
/* 83300C 8024180C 8C450000 */   lw       $a1, ($v0)
/* 833010 80241810 0040182D */  daddu     $v1, $v0, $zero
/* 833014 80241814 10600012 */  beqz      $v1, .L80241860
/* 833018 80241818 0000202D */   daddu    $a0, $zero, $zero
/* 83301C 8024181C 8C620000 */  lw        $v0, ($v1)
/* 833020 80241820 5040000A */  beql      $v0, $zero, .L8024184C
/* 833024 80241824 00041080 */   sll      $v0, $a0, 2
/* 833028 80241828 3C058025 */  lui       $a1, 0x8025
/* 83302C 8024182C 24A51400 */  addiu     $a1, $a1, 0x1400
.L80241830:
/* 833030 80241830 24630004 */  addiu     $v1, $v1, 4
/* 833034 80241834 24840001 */  addiu     $a0, $a0, 1
/* 833038 80241838 ACA20000 */  sw        $v0, ($a1)
/* 83303C 8024183C 8C620000 */  lw        $v0, ($v1)
/* 833040 80241840 1440FFFB */  bnez      $v0, .L80241830
/* 833044 80241844 24A50004 */   addiu    $a1, $a1, 4
/* 833048 80241848 00041080 */  sll       $v0, $a0, 2
.L8024184C:
/* 83304C 8024184C 3C018025 */  lui       $at, 0x8025
/* 833050 80241850 00220821 */  addu      $at, $at, $v0
/* 833054 80241854 AC201400 */  sw        $zero, 0x1400($at)
/* 833058 80241858 08090622 */  j         .L80241888
/* 83305C 8024185C 00000000 */   nop      
.L80241860:
/* 833060 80241860 3C038025 */  lui       $v1, 0x8025
/* 833064 80241864 24631400 */  addiu     $v1, $v1, 0x1400
/* 833068 80241868 0060282D */  daddu     $a1, $v1, $zero
.L8024186C:
/* 83306C 8024186C 24820010 */  addiu     $v0, $a0, 0x10
/* 833070 80241870 AC620000 */  sw        $v0, ($v1)
/* 833074 80241874 24630004 */  addiu     $v1, $v1, 4
/* 833078 80241878 24840001 */  addiu     $a0, $a0, 1
/* 83307C 8024187C 28820070 */  slti      $v0, $a0, 0x70
/* 833080 80241880 1440FFFA */  bnez      $v0, .L8024186C
/* 833084 80241884 ACA001C0 */   sw       $zero, 0x1c0($a1)
.L80241888:
/* 833088 80241888 8FBF0010 */  lw        $ra, 0x10($sp)
/* 83308C 8024188C 24020002 */  addiu     $v0, $zero, 2
/* 833090 80241890 03E00008 */  jr        $ra
/* 833094 80241894 27BD0018 */   addiu    $sp, $sp, 0x18
