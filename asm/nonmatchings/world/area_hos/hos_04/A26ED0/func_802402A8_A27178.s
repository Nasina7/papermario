.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402A8_A27178
/* A27178 802402A8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A2717C 802402AC AFB00010 */  sw        $s0, 0x10($sp)
/* A27180 802402B0 0080802D */  daddu     $s0, $a0, $zero
/* A27184 802402B4 AFBF0014 */  sw        $ra, 0x14($sp)
/* A27188 802402B8 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A2718C 802402BC 8E020088 */  lw        $v0, 0x88($s0)
/* A27190 802402C0 00621821 */  addu      $v1, $v1, $v0
/* A27194 802402C4 04610004 */  bgez      $v1, .L802402D8
/* A27198 802402C8 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A2719C 802402CC 3C020002 */  lui       $v0, 2
/* A271A0 802402D0 080900BA */  j         .L802402E8
/* A271A4 802402D4 00621021 */   addu     $v0, $v1, $v0
.L802402D8:
/* A271A8 802402D8 3C040002 */  lui       $a0, 2
/* A271AC 802402DC 0083102A */  slt       $v0, $a0, $v1
/* A271B0 802402E0 10400002 */  beqz      $v0, .L802402EC
/* A271B4 802402E4 00641023 */   subu     $v0, $v1, $a0
.L802402E8:
/* A271B8 802402E8 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802402EC:
/* A271BC 802402EC 8E0300AC */  lw        $v1, 0xac($s0)
/* A271C0 802402F0 8E02008C */  lw        $v0, 0x8c($s0)
/* A271C4 802402F4 00621821 */  addu      $v1, $v1, $v0
/* A271C8 802402F8 04610004 */  bgez      $v1, .L8024030C
/* A271CC 802402FC AE0300AC */   sw       $v1, 0xac($s0)
/* A271D0 80240300 3C020002 */  lui       $v0, 2
/* A271D4 80240304 080900C7 */  j         .L8024031C
/* A271D8 80240308 00621021 */   addu     $v0, $v1, $v0
.L8024030C:
/* A271DC 8024030C 3C040002 */  lui       $a0, 2
/* A271E0 80240310 0083102A */  slt       $v0, $a0, $v1
/* A271E4 80240314 10400002 */  beqz      $v0, .L80240320
/* A271E8 80240318 00641023 */   subu     $v0, $v1, $a0
.L8024031C:
/* A271EC 8024031C AE0200AC */  sw        $v0, 0xac($s0)
.L80240320:
/* A271F0 80240320 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A271F4 80240324 8E020090 */  lw        $v0, 0x90($s0)
/* A271F8 80240328 00621821 */  addu      $v1, $v1, $v0
/* A271FC 8024032C 04610004 */  bgez      $v1, .L80240340
/* A27200 80240330 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A27204 80240334 3C020002 */  lui       $v0, 2
/* A27208 80240338 080900D4 */  j         .L80240350
/* A2720C 8024033C 00621021 */   addu     $v0, $v1, $v0
.L80240340:
/* A27210 80240340 3C040002 */  lui       $a0, 2
/* A27214 80240344 0083102A */  slt       $v0, $a0, $v1
/* A27218 80240348 10400002 */  beqz      $v0, .L80240354
/* A2721C 8024034C 00641023 */   subu     $v0, $v1, $a0
.L80240350:
/* A27220 80240350 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240354:
/* A27224 80240354 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A27228 80240358 8E020094 */  lw        $v0, 0x94($s0)
/* A2722C 8024035C 00621821 */  addu      $v1, $v1, $v0
/* A27230 80240360 04610004 */  bgez      $v1, .L80240374
/* A27234 80240364 AE0300B4 */   sw       $v1, 0xb4($s0)
/* A27238 80240368 3C020002 */  lui       $v0, 2
/* A2723C 8024036C 080900E1 */  j         .L80240384
/* A27240 80240370 00621021 */   addu     $v0, $v1, $v0
.L80240374:
/* A27244 80240374 3C040002 */  lui       $a0, 2
/* A27248 80240378 0083102A */  slt       $v0, $a0, $v1
/* A2724C 8024037C 10400002 */  beqz      $v0, .L80240388
/* A27250 80240380 00641023 */   subu     $v0, $v1, $a0
.L80240384:
/* A27254 80240384 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240388:
/* A27258 80240388 8E040084 */  lw        $a0, 0x84($s0)
/* A2725C 8024038C 0C046F07 */  jal       set_main_pan_u
/* A27260 80240390 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A27264 80240394 8E040084 */  lw        $a0, 0x84($s0)
/* A27268 80240398 0C046F0D */  jal       set_main_pan_v
/* A2726C 8024039C 8E0500AC */   lw       $a1, 0xac($s0)
/* A27270 802403A0 8E040084 */  lw        $a0, 0x84($s0)
/* A27274 802403A4 0C046F13 */  jal       set_aux_pan_u
/* A27278 802403A8 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A2727C 802403AC 8E040084 */  lw        $a0, 0x84($s0)
/* A27280 802403B0 0C046F19 */  jal       set_aux_pan_v
/* A27284 802403B4 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A27288 802403B8 8FBF0014 */  lw        $ra, 0x14($sp)
/* A2728C 802403BC 8FB00010 */  lw        $s0, 0x10($sp)
/* A27290 802403C0 0000102D */  daddu     $v0, $zero, $zero
/* A27294 802403C4 03E00008 */  jr        $ra
/* A27298 802403C8 27BD0018 */   addiu    $sp, $sp, 0x18
