.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A1218_7971D8
/* 7971D8 802A1218 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 7971DC 802A121C AFB1002C */  sw        $s1, 0x2c($sp)
/* 7971E0 802A1220 0080882D */  daddu     $s1, $a0, $zero
/* 7971E4 802A1224 AFBF0034 */  sw        $ra, 0x34($sp)
/* 7971E8 802A1228 AFB20030 */  sw        $s2, 0x30($sp)
/* 7971EC 802A122C AFB00028 */  sw        $s0, 0x28($sp)
/* 7971F0 802A1230 8E30000C */  lw        $s0, 0xc($s1)
/* 7971F4 802A1234 8E050000 */  lw        $a1, ($s0)
/* 7971F8 802A1238 0C0B1EAF */  jal       get_variable
/* 7971FC 802A123C 26100004 */   addiu    $s0, $s0, 4
/* 797200 802A1240 8E050000 */  lw        $a1, ($s0)
/* 797204 802A1244 26100004 */  addiu     $s0, $s0, 4
/* 797208 802A1248 0220202D */  daddu     $a0, $s1, $zero
/* 79720C 802A124C 0C0B1EAF */  jal       get_variable
/* 797210 802A1250 0040902D */   daddu    $s2, $v0, $zero
/* 797214 802A1254 0220202D */  daddu     $a0, $s1, $zero
/* 797218 802A1258 8E050000 */  lw        $a1, ($s0)
/* 79721C 802A125C 0C0B1EAF */  jal       get_variable
/* 797220 802A1260 0040802D */   daddu    $s0, $v0, $zero
/* 797224 802A1264 24040004 */  addiu     $a0, $zero, 4
/* 797228 802A1268 44922000 */  mtc1      $s2, $f4
/* 79722C 802A126C 00000000 */  nop
/* 797230 802A1270 46802120 */  cvt.s.w   $f4, $f4
/* 797234 802A1274 44052000 */  mfc1      $a1, $f4
/* 797238 802A1278 44902000 */  mtc1      $s0, $f4
/* 79723C 802A127C 00000000 */  nop
/* 797240 802A1280 46802120 */  cvt.s.w   $f4, $f4
/* 797244 802A1284 44062000 */  mfc1      $a2, $f4
/* 797248 802A1288 44822000 */  mtc1      $v0, $f4
/* 79724C 802A128C 00000000 */  nop
/* 797250 802A1290 46802120 */  cvt.s.w   $f4, $f4
/* 797254 802A1294 3C0141A0 */  lui       $at, 0x41a0
/* 797258 802A1298 44810000 */  mtc1      $at, $f0
/* 79725C 802A129C 3C013F80 */  lui       $at, 0x3f80
/* 797260 802A12A0 44811000 */  mtc1      $at, $f2
/* 797264 802A12A4 44072000 */  mfc1      $a3, $f4
/* 797268 802A12A8 2403000A */  addiu     $v1, $zero, 0xa
/* 79726C 802A12AC AFA3001C */  sw        $v1, 0x1c($sp)
/* 797270 802A12B0 2403000F */  addiu     $v1, $zero, 0xf
/* 797274 802A12B4 AFA30020 */  sw        $v1, 0x20($sp)
/* 797278 802A12B8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 79727C 802A12BC E7A00014 */  swc1      $f0, 0x14($sp)
/* 797280 802A12C0 0C01C8D4 */  jal       func_80072350
/* 797284 802A12C4 E7A20018 */   swc1     $f2, 0x18($sp)
/* 797288 802A12C8 8FBF0034 */  lw        $ra, 0x34($sp)
/* 79728C 802A12CC 8FB20030 */  lw        $s2, 0x30($sp)
/* 797290 802A12D0 8FB1002C */  lw        $s1, 0x2c($sp)
/* 797294 802A12D4 8FB00028 */  lw        $s0, 0x28($sp)
/* 797298 802A12D8 24020002 */  addiu     $v0, $zero, 2
/* 79729C 802A12DC 03E00008 */  jr        $ra
/* 7972A0 802A12E0 27BD0038 */   addiu    $sp, $sp, 0x38
