.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel strcmp
/* 43490 80068090 0801A02C */  j         .LIQUE_800680B0
/* 43494 80068094 90860000 */   lbu      $a2, 0x0($a0)
.LIQUE_80068098:
/* 43498 80068098 14E00003 */  bnez      $a3, .LIQUE_800680A8
/* 4349C 8006809C 24840001 */   addiu    $a0, $a0, 0x1
/* 434A0 800680A0 03E00008 */  jr        $ra
/* 434A4 800680A4 00001021 */   addu     $v0, $zero, $zero
.LIQUE_800680A8:
/* 434A8 800680A8 24A50001 */  addiu     $a1, $a1, 0x1
/* 434AC 800680AC 90860000 */  lbu       $a2, 0x0($a0)
.LIQUE_800680B0:
/* 434B0 800680B0 90A80000 */  lbu       $t0, 0x0($a1)
/* 434B4 800680B4 80A30000 */  lb        $v1, 0x0($a1)
/* 434B8 800680B8 00061600 */  sll       $v0, $a2, 24
/* 434BC 800680BC 00021603 */  sra       $v0, $v0, 24
/* 434C0 800680C0 1043FFF5 */  beq       $v0, $v1, .LIQUE_80068098
/* 434C4 800680C4 00C03821 */   addu     $a3, $a2, $zero
/* 434C8 800680C8 00061E00 */  sll       $v1, $a2, 24
/* 434CC 800680CC 00031E03 */  sra       $v1, $v1, 24
/* 434D0 800680D0 00081600 */  sll       $v0, $t0, 24
/* 434D4 800680D4 00021603 */  sra       $v0, $v0, 24
/* 434D8 800680D8 03E00008 */  jr        $ra
/* 434DC 800680DC 00621023 */   subu     $v0, $v1, $v0
