.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802429D0_C38F00
/* C38F00 802429D0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* C38F04 802429D4 AFB60040 */  sw        $s6, 0x40($sp)
/* C38F08 802429D8 0080B02D */  daddu     $s6, $a0, $zero
/* C38F0C 802429DC AFB00028 */  sw        $s0, 0x28($sp)
/* C38F10 802429E0 00A0802D */  daddu     $s0, $a1, $zero
/* C38F14 802429E4 AFBF0044 */  sw        $ra, 0x44($sp)
/* C38F18 802429E8 AFB5003C */  sw        $s5, 0x3c($sp)
/* C38F1C 802429EC AFB40038 */  sw        $s4, 0x38($sp)
/* C38F20 802429F0 AFB30034 */  sw        $s3, 0x34($sp)
/* C38F24 802429F4 AFB20030 */  sw        $s2, 0x30($sp)
/* C38F28 802429F8 AFB1002C */  sw        $s1, 0x2c($sp)
/* C38F2C 802429FC F7B80058 */  sdc1      $f24, 0x58($sp)
/* C38F30 80242A00 F7B60050 */  sdc1      $f22, 0x50($sp)
/* C38F34 80242A04 F7B40048 */  sdc1      $f20, 0x48($sp)
/* C38F38 80242A08 8ED3000C */  lw        $s3, 0xc($s6)
/* C38F3C 80242A0C 0C00EAD2 */  jal       get_npc_safe
/* C38F40 80242A10 2404FFFC */   addiu    $a0, $zero, -4
/* C38F44 80242A14 27A50018 */  addiu     $a1, $sp, 0x18
/* C38F48 80242A18 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* C38F4C 80242A1C 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* C38F50 80242A20 27A6001C */  addiu     $a2, $sp, 0x1c
/* C38F54 80242A24 00041880 */  sll       $v1, $a0, 2
/* C38F58 80242A28 00641821 */  addu      $v1, $v1, $a0
/* C38F5C 80242A2C 00031880 */  sll       $v1, $v1, 2
/* C38F60 80242A30 00641823 */  subu      $v1, $v1, $a0
/* C38F64 80242A34 000320C0 */  sll       $a0, $v1, 3
/* C38F68 80242A38 00641821 */  addu      $v1, $v1, $a0
/* C38F6C 80242A3C 000318C0 */  sll       $v1, $v1, 3
/* C38F70 80242A40 3C01800B */  lui       $at, 0x800b
/* C38F74 80242A44 00230821 */  addu      $at, $at, $v1
/* C38F78 80242A48 C42C1DEC */  lwc1      $f12, 0x1dec($at)
/* C38F7C 80242A4C 0C00A88D */  jal       sin_cos_deg
/* C38F80 80242A50 0040A82D */   daddu    $s5, $v0, $zero
/* C38F84 80242A54 1200005D */  beqz      $s0, .L80242BCC
/* C38F88 80242A58 00000000 */   nop      
/* C38F8C 80242A5C 0C00AB0A */  jal       general_heap_malloc
/* C38F90 80242A60 24040068 */   addiu    $a0, $zero, 0x68
/* C38F94 80242A64 0040902D */  daddu     $s2, $v0, $zero
/* C38F98 80242A68 02C0202D */  daddu     $a0, $s6, $zero
/* C38F9C 80242A6C 0000882D */  daddu     $s1, $zero, $zero
/* C38FA0 80242A70 2414FFFF */  addiu     $s4, $zero, -1
/* C38FA4 80242A74 AED20060 */  sw        $s2, 0x60($s6)
/* C38FA8 80242A78 8E650000 */  lw        $a1, ($s3)
/* C38FAC 80242A7C 3C014148 */  lui       $at, 0x4148
/* C38FB0 80242A80 4481C000 */  mtc1      $at, $f24
/* C38FB4 80242A84 3C013F80 */  lui       $at, 0x3f80
/* C38FB8 80242A88 4481B000 */  mtc1      $at, $f22
/* C38FBC 80242A8C 4480A000 */  mtc1      $zero, $f20
/* C38FC0 80242A90 0C0B1EAF */  jal       get_variable
/* C38FC4 80242A94 0240802D */   daddu    $s0, $s2, $zero
/* C38FC8 80242A98 0C04417A */  jal       get_entity_by_index
/* C38FCC 80242A9C 0040202D */   daddu    $a0, $v0, $zero
/* C38FD0 80242AA0 AE42005C */  sw        $v0, 0x5c($s2)
.L80242AA4:
/* C38FD4 80242AA4 8E42005C */  lw        $v0, 0x5c($s2)
/* C38FD8 80242AA8 C440004C */  lwc1      $f0, 0x4c($v0)
/* C38FDC 80242AAC 0000202D */  daddu     $a0, $zero, $zero
/* C38FE0 80242AB0 E7B60010 */  swc1      $f22, 0x10($sp)
/* C38FE4 80242AB4 AFB40014 */  sw        $s4, 0x14($sp)
/* C38FE8 80242AB8 46180000 */  add.s     $f0, $f0, $f24
/* C38FEC 80242ABC 8C450048 */  lw        $a1, 0x48($v0)
/* C38FF0 80242AC0 8C470050 */  lw        $a3, 0x50($v0)
/* C38FF4 80242AC4 44060000 */  mfc1      $a2, $f0
/* C38FF8 80242AC8 0C01C5BC */  jal       func_800716F0
/* C38FFC 80242ACC 26310001 */   addiu    $s1, $s1, 1
/* C39000 80242AD0 AE020008 */  sw        $v0, 8($s0)
/* C39004 80242AD4 E614002C */  swc1      $f20, 0x2c($s0)
/* C39008 80242AD8 E6140020 */  swc1      $f20, 0x20($s0)
/* C3900C 80242ADC E6140014 */  swc1      $f20, 0x14($s0)
/* C39010 80242AE0 E6140050 */  swc1      $f20, 0x50($s0)
/* C39014 80242AE4 E6140044 */  swc1      $f20, 0x44($s0)
/* C39018 80242AE8 E6140038 */  swc1      $f20, 0x38($s0)
/* C3901C 80242AEC 2A220003 */  slti      $v0, $s1, 3
/* C39020 80242AF0 1440FFEC */  bnez      $v0, .L80242AA4
/* C39024 80242AF4 26100004 */   addiu    $s0, $s0, 4
/* C39028 80242AF8 0000882D */  daddu     $s1, $zero, $zero
/* C3902C 80242AFC 0240802D */  daddu     $s0, $s2, $zero
/* C39030 80242B00 3C148024 */  lui       $s4, 0x8024
/* C39034 80242B04 26943D88 */  addiu     $s4, $s4, 0x3d88
/* C39038 80242B08 3C014248 */  lui       $at, 0x4248
/* C3903C 80242B0C 4481A000 */  mtc1      $at, $f20
/* C39040 80242B10 24130044 */  addiu     $s3, $zero, 0x44
/* C39044 80242B14 AE400000 */  sw        $zero, ($s2)
/* C39048 80242B18 AE400004 */  sw        $zero, 4($s2)
/* C3904C 80242B1C AE400060 */  sw        $zero, 0x60($s2)
/* C39050 80242B20 AE400064 */  sw        $zero, 0x64($s2)
.L80242B24:
/* C39054 80242B24 27A40020 */  addiu     $a0, $sp, 0x20
/* C39058 80242B28 4406A000 */  mfc1      $a2, $f20
/* C3905C 80242B2C 8E870000 */  lw        $a3, ($s4)
/* C39060 80242B30 02532821 */  addu      $a1, $s2, $s3
/* C39064 80242B34 0C00A7E7 */  jal       add_vec2D_polar
/* C39068 80242B38 AFA00020 */   sw       $zero, 0x20($sp)
/* C3906C 80242B3C C7A2001C */  lwc1      $f2, 0x1c($sp)
/* C39070 80242B40 C7A40020 */  lwc1      $f4, 0x20($sp)
/* C39074 80242B44 46041082 */  mul.s     $f2, $f2, $f4
/* C39078 80242B48 00000000 */  nop       
/* C3907C 80242B4C C7A00018 */  lwc1      $f0, 0x18($sp)
/* C39080 80242B50 46040002 */  mul.s     $f0, $f0, $f4
/* C39084 80242B54 00000000 */  nop       
/* C39088 80242B58 E6020038 */  swc1      $f2, 0x38($s0)
/* C3908C 80242B5C E6000050 */  swc1      $f0, 0x50($s0)
/* C39090 80242B60 8E42005C */  lw        $v0, 0x5c($s2)
/* C39094 80242B64 C6000038 */  lwc1      $f0, 0x38($s0)
/* C39098 80242B68 C4420048 */  lwc1      $f2, 0x48($v0)
/* C3909C 80242B6C 46001080 */  add.s     $f2, $f2, $f0
/* C390A0 80242B70 C6A00038 */  lwc1      $f0, 0x38($s5)
/* C390A4 80242B74 46020001 */  sub.s     $f0, $f0, $f2
/* C390A8 80242B78 E6000038 */  swc1      $f0, 0x38($s0)
/* C390AC 80242B7C 8E42005C */  lw        $v0, 0x5c($s2)
/* C390B0 80242B80 C6000044 */  lwc1      $f0, 0x44($s0)
/* C390B4 80242B84 C442004C */  lwc1      $f2, 0x4c($v0)
/* C390B8 80242B88 46001080 */  add.s     $f2, $f2, $f0
/* C390BC 80242B8C C6A0003C */  lwc1      $f0, 0x3c($s5)
/* C390C0 80242B90 46020001 */  sub.s     $f0, $f0, $f2
/* C390C4 80242B94 E6000044 */  swc1      $f0, 0x44($s0)
/* C390C8 80242B98 8E42005C */  lw        $v0, 0x5c($s2)
/* C390CC 80242B9C C6000050 */  lwc1      $f0, 0x50($s0)
/* C390D0 80242BA0 C4420050 */  lwc1      $f2, 0x50($v0)
/* C390D4 80242BA4 26940004 */  addiu     $s4, $s4, 4
/* C390D8 80242BA8 46001080 */  add.s     $f2, $f2, $f0
/* C390DC 80242BAC C6A00040 */  lwc1      $f0, 0x40($s5)
/* C390E0 80242BB0 26730004 */  addiu     $s3, $s3, 4
/* C390E4 80242BB4 46020001 */  sub.s     $f0, $f0, $f2
/* C390E8 80242BB8 26310001 */  addiu     $s1, $s1, 1
/* C390EC 80242BBC 2A220003 */  slti      $v0, $s1, 3
/* C390F0 80242BC0 E6000050 */  swc1      $f0, 0x50($s0)
/* C390F4 80242BC4 1440FFD7 */  bnez      $v0, .L80242B24
/* C390F8 80242BC8 26100004 */   addiu    $s0, $s0, 4
.L80242BCC:
/* C390FC 80242BCC 8ED20060 */  lw        $s2, 0x60($s6)
/* C39100 80242BD0 8E430000 */  lw        $v1, ($s2)
/* C39104 80242BD4 24020001 */  addiu     $v0, $zero, 1
/* C39108 80242BD8 10620038 */  beq       $v1, $v0, .L80242CBC
/* C3910C 80242BDC 28620002 */   slti     $v0, $v1, 2
/* C39110 80242BE0 50400005 */  beql      $v0, $zero, .L80242BF8
/* C39114 80242BE4 24020002 */   addiu    $v0, $zero, 2
/* C39118 80242BE8 10600007 */  beqz      $v1, .L80242C08
/* C3911C 80242BEC 24040005 */   addiu    $a0, $zero, 5
/* C39120 80242BF0 08090B68 */  j         .L80242DA0
/* C39124 80242BF4 00000000 */   nop      
.L80242BF8:
/* C39128 80242BF8 10620058 */  beq       $v1, $v0, .L80242D5C
/* C3912C 80242BFC 00000000 */   nop      
/* C39130 80242C00 08090B68 */  j         .L80242DA0
/* C39134 80242C04 00000000 */   nop      
.L80242C08:
/* C39138 80242C08 0000882D */  daddu     $s1, $zero, $zero
/* C3913C 80242C0C 3C148024 */  lui       $s4, 0x8024
/* C39140 80242C10 26943D88 */  addiu     $s4, $s4, 0x3d88
/* C39144 80242C14 24130020 */  addiu     $s3, $zero, 0x20
/* C39148 80242C18 3C064248 */  lui       $a2, 0x4248
/* C3914C 80242C1C 44800000 */  mtc1      $zero, $f0
/* C39150 80242C20 24020014 */  addiu     $v0, $zero, 0x14
/* C39154 80242C24 AFA20010 */  sw        $v0, 0x10($sp)
/* C39158 80242C28 44050000 */  mfc1      $a1, $f0
/* C3915C 80242C2C 8E470060 */  lw        $a3, 0x60($s2)
/* C39160 80242C30 4485B000 */  mtc1      $a1, $f22
/* C39164 80242C34 0C00A8ED */  jal       update_lerp
/* C39168 80242C38 0240802D */   daddu    $s0, $s2, $zero
/* C3916C 80242C3C 46000506 */  mov.s     $f20, $f0
.L80242C40:
/* C39170 80242C40 4406A000 */  mfc1      $a2, $f20
/* C39174 80242C44 27A40020 */  addiu     $a0, $sp, 0x20
/* C39178 80242C48 E6160020 */  swc1      $f22, 0x20($s0)
/* C3917C 80242C4C 8E870000 */  lw        $a3, ($s4)
/* C39180 80242C50 02532821 */  addu      $a1, $s2, $s3
/* C39184 80242C54 0C00A7E7 */  jal       add_vec2D_polar
/* C39188 80242C58 E7B60020 */   swc1     $f22, 0x20($sp)
/* C3918C 80242C5C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* C39190 80242C60 C7A00020 */  lwc1      $f0, 0x20($sp)
/* C39194 80242C64 46002102 */  mul.s     $f4, $f4, $f0
/* C39198 80242C68 00000000 */  nop       
/* C3919C 80242C6C C7A20018 */  lwc1      $f2, 0x18($sp)
/* C391A0 80242C70 26940004 */  addiu     $s4, $s4, 4
/* C391A4 80242C74 46001082 */  mul.s     $f2, $f2, $f0
/* C391A8 80242C78 00000000 */  nop       
/* C391AC 80242C7C 26730004 */  addiu     $s3, $s3, 4
/* C391B0 80242C80 26310001 */  addiu     $s1, $s1, 1
/* C391B4 80242C84 2A220003 */  slti      $v0, $s1, 3
/* C391B8 80242C88 E6040014 */  swc1      $f4, 0x14($s0)
/* C391BC 80242C8C E602002C */  swc1      $f2, 0x2c($s0)
/* C391C0 80242C90 1440FFEB */  bnez      $v0, .L80242C40
/* C391C4 80242C94 26100004 */   addiu    $s0, $s0, 4
/* C391C8 80242C98 8E420060 */  lw        $v0, 0x60($s2)
/* C391CC 80242C9C 24420001 */  addiu     $v0, $v0, 1
/* C391D0 80242CA0 AE420060 */  sw        $v0, 0x60($s2)
/* C391D4 80242CA4 28420015 */  slti      $v0, $v0, 0x15
/* C391D8 80242CA8 1440003D */  bnez      $v0, .L80242DA0
/* C391DC 80242CAC 24020001 */   addiu    $v0, $zero, 1
/* C391E0 80242CB0 AE420000 */  sw        $v0, ($s2)
/* C391E4 80242CB4 08090B68 */  j         .L80242DA0
/* C391E8 80242CB8 AE400060 */   sw       $zero, 0x60($s2)
.L80242CBC:
/* C391EC 80242CBC 0000882D */  daddu     $s1, $zero, $zero
/* C391F0 80242CC0 3C148024 */  lui       $s4, 0x8024
/* C391F4 80242CC4 26943D88 */  addiu     $s4, $s4, 0x3d88
/* C391F8 80242CC8 24130020 */  addiu     $s3, $zero, 0x20
/* C391FC 80242CCC 0240802D */  daddu     $s0, $s2, $zero
/* C39200 80242CD0 3C014248 */  lui       $at, 0x4248
/* C39204 80242CD4 4481A000 */  mtc1      $at, $f20
/* C39208 80242CD8 4480B000 */  mtc1      $zero, $f22
.L80242CDC:
/* C3920C 80242CDC 4406A000 */  mfc1      $a2, $f20
/* C39210 80242CE0 27A40020 */  addiu     $a0, $sp, 0x20
/* C39214 80242CE4 E6160020 */  swc1      $f22, 0x20($s0)
/* C39218 80242CE8 8E870000 */  lw        $a3, ($s4)
/* C3921C 80242CEC 02532821 */  addu      $a1, $s2, $s3
/* C39220 80242CF0 0C00A7E7 */  jal       add_vec2D_polar
/* C39224 80242CF4 E7B60020 */   swc1     $f22, 0x20($sp)
/* C39228 80242CF8 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* C3922C 80242CFC C7A00020 */  lwc1      $f0, 0x20($sp)
/* C39230 80242D00 46002102 */  mul.s     $f4, $f4, $f0
/* C39234 80242D04 00000000 */  nop       
/* C39238 80242D08 C7A20018 */  lwc1      $f2, 0x18($sp)
/* C3923C 80242D0C 26940004 */  addiu     $s4, $s4, 4
/* C39240 80242D10 46001082 */  mul.s     $f2, $f2, $f0
/* C39244 80242D14 00000000 */  nop       
/* C39248 80242D18 26730004 */  addiu     $s3, $s3, 4
/* C3924C 80242D1C 26310001 */  addiu     $s1, $s1, 1
/* C39250 80242D20 2A220003 */  slti      $v0, $s1, 3
/* C39254 80242D24 E6040014 */  swc1      $f4, 0x14($s0)
/* C39258 80242D28 E602002C */  swc1      $f2, 0x2c($s0)
/* C3925C 80242D2C 1440FFEB */  bnez      $v0, .L80242CDC
/* C39260 80242D30 26100004 */   addiu    $s0, $s0, 4
/* C39264 80242D34 8E420060 */  lw        $v0, 0x60($s2)
/* C39268 80242D38 24420001 */  addiu     $v0, $v0, 1
/* C3926C 80242D3C AE420060 */  sw        $v0, 0x60($s2)
/* C39270 80242D40 28420010 */  slti      $v0, $v0, 0x10
/* C39274 80242D44 14400016 */  bnez      $v0, .L80242DA0
/* C39278 80242D48 2402000F */   addiu    $v0, $zero, 0xf
/* C3927C 80242D4C AE420060 */  sw        $v0, 0x60($s2)
/* C39280 80242D50 24020002 */  addiu     $v0, $zero, 2
/* C39284 80242D54 08090B68 */  j         .L80242DA0
/* C39288 80242D58 AE420000 */   sw       $v0, ($s2)
.L80242D5C:
/* C3928C 80242D5C 8E420060 */  lw        $v0, 0x60($s2)
/* C39290 80242D60 24420001 */  addiu     $v0, $v0, 1
/* C39294 80242D64 AE420060 */  sw        $v0, 0x60($s2)
/* C39298 80242D68 2842001F */  slti      $v0, $v0, 0x1f
/* C3929C 80242D6C 1440000C */  bnez      $v0, .L80242DA0
/* C392A0 80242D70 0000882D */   daddu    $s1, $zero, $zero
/* C392A4 80242D74 0240282D */  daddu     $a1, $s2, $zero
.L80242D78:
/* C392A8 80242D78 8CA20008 */  lw        $v0, 8($a1)
/* C392AC 80242D7C 8C430000 */  lw        $v1, ($v0)
/* C392B0 80242D80 26310001 */  addiu     $s1, $s1, 1
/* C392B4 80242D84 34630010 */  ori       $v1, $v1, 0x10
/* C392B8 80242D88 AC430000 */  sw        $v1, ($v0)
/* C392BC 80242D8C 2A220003 */  slti      $v0, $s1, 3
/* C392C0 80242D90 1440FFF9 */  bnez      $v0, .L80242D78
/* C392C4 80242D94 24A50004 */   addiu    $a1, $a1, 4
/* C392C8 80242D98 08090BB5 */  j         .L80242ED4
/* C392CC 80242D9C 24020002 */   addiu    $v0, $zero, 2
.L80242DA0:
/* C392D0 80242DA0 8E430004 */  lw        $v1, 4($s2)
/* C392D4 80242DA4 10600005 */  beqz      $v1, .L80242DBC
/* C392D8 80242DA8 24020001 */   addiu    $v0, $zero, 1
/* C392DC 80242DAC 1062000B */  beq       $v1, $v0, .L80242DDC
/* C392E0 80242DB0 0000882D */   daddu    $s1, $zero, $zero
/* C392E4 80242DB4 08090BA4 */  j         .L80242E90
/* C392E8 80242DB8 0240282D */   daddu    $a1, $s2, $zero
.L80242DBC:
/* C392EC 80242DBC 8E420064 */  lw        $v0, 0x64($s2)
/* C392F0 80242DC0 24420001 */  addiu     $v0, $v0, 1
/* C392F4 80242DC4 AE420064 */  sw        $v0, 0x64($s2)
/* C392F8 80242DC8 28420010 */  slti      $v0, $v0, 0x10
/* C392FC 80242DCC 1440002F */  bnez      $v0, .L80242E8C
/* C39300 80242DD0 0000882D */   daddu    $s1, $zero, $zero
/* C39304 80242DD4 08090BA0 */  j         .L80242E80
/* C39308 80242DD8 24020001 */   addiu    $v0, $zero, 1
.L80242DDC:
/* C3930C 80242DDC 4480A000 */  mtc1      $zero, $f20
/* C39310 80242DE0 24130014 */  addiu     $s3, $zero, 0x14
/* C39314 80242DE4 0240802D */  daddu     $s0, $s2, $zero
.L80242DE8:
/* C39318 80242DE8 4405A000 */  mfc1      $a1, $f20
/* C3931C 80242DEC AFB30010 */  sw        $s3, 0x10($sp)
/* C39320 80242DF0 8E060038 */  lw        $a2, 0x38($s0)
/* C39324 80242DF4 8E470064 */  lw        $a3, 0x64($s2)
/* C39328 80242DF8 0C00A8ED */  jal       update_lerp
/* C3932C 80242DFC 24040001 */   addiu    $a0, $zero, 1
/* C39330 80242E00 C6020014 */  lwc1      $f2, 0x14($s0)
/* C39334 80242E04 46001080 */  add.s     $f2, $f2, $f0
/* C39338 80242E08 4405A000 */  mfc1      $a1, $f20
/* C3933C 80242E0C E6020014 */  swc1      $f2, 0x14($s0)
/* C39340 80242E10 AFB30010 */  sw        $s3, 0x10($sp)
/* C39344 80242E14 8E060044 */  lw        $a2, 0x44($s0)
/* C39348 80242E18 8E470064 */  lw        $a3, 0x64($s2)
/* C3934C 80242E1C 0C00A8ED */  jal       update_lerp
/* C39350 80242E20 24040001 */   addiu    $a0, $zero, 1
/* C39354 80242E24 C6020020 */  lwc1      $f2, 0x20($s0)
/* C39358 80242E28 46001080 */  add.s     $f2, $f2, $f0
/* C3935C 80242E2C 4405A000 */  mfc1      $a1, $f20
/* C39360 80242E30 E6020020 */  swc1      $f2, 0x20($s0)
/* C39364 80242E34 AFB30010 */  sw        $s3, 0x10($sp)
/* C39368 80242E38 8E060050 */  lw        $a2, 0x50($s0)
/* C3936C 80242E3C 8E470064 */  lw        $a3, 0x64($s2)
/* C39370 80242E40 0C00A8ED */  jal       update_lerp
/* C39374 80242E44 24040001 */   addiu    $a0, $zero, 1
/* C39378 80242E48 C602002C */  lwc1      $f2, 0x2c($s0)
/* C3937C 80242E4C 46001080 */  add.s     $f2, $f2, $f0
/* C39380 80242E50 26310001 */  addiu     $s1, $s1, 1
/* C39384 80242E54 2A220003 */  slti      $v0, $s1, 3
/* C39388 80242E58 E602002C */  swc1      $f2, 0x2c($s0)
/* C3938C 80242E5C 1440FFE2 */  bnez      $v0, .L80242DE8
/* C39390 80242E60 26100004 */   addiu    $s0, $s0, 4
/* C39394 80242E64 8E420064 */  lw        $v0, 0x64($s2)
/* C39398 80242E68 24420001 */  addiu     $v0, $v0, 1
/* C3939C 80242E6C AE420064 */  sw        $v0, 0x64($s2)
/* C393A0 80242E70 28420015 */  slti      $v0, $v0, 0x15
/* C393A4 80242E74 14400005 */  bnez      $v0, .L80242E8C
/* C393A8 80242E78 0000882D */   daddu    $s1, $zero, $zero
/* C393AC 80242E7C 24020002 */  addiu     $v0, $zero, 2
.L80242E80:
/* C393B0 80242E80 AE420004 */  sw        $v0, 4($s2)
/* C393B4 80242E84 AE400064 */  sw        $zero, 0x64($s2)
/* C393B8 80242E88 0000882D */  daddu     $s1, $zero, $zero
.L80242E8C:
/* C393BC 80242E8C 0240282D */  daddu     $a1, $s2, $zero
.L80242E90:
/* C393C0 80242E90 8CA20008 */  lw        $v0, 8($a1)
/* C393C4 80242E94 C4A00014 */  lwc1      $f0, 0x14($a1)
/* C393C8 80242E98 8C42000C */  lw        $v0, 0xc($v0)
/* C393CC 80242E9C E4400010 */  swc1      $f0, 0x10($v0)
/* C393D0 80242EA0 8CA20008 */  lw        $v0, 8($a1)
/* C393D4 80242EA4 C4A00020 */  lwc1      $f0, 0x20($a1)
/* C393D8 80242EA8 8C42000C */  lw        $v0, 0xc($v0)
/* C393DC 80242EAC 26310001 */  addiu     $s1, $s1, 1
/* C393E0 80242EB0 E4400014 */  swc1      $f0, 0x14($v0)
/* C393E4 80242EB4 8CA20008 */  lw        $v0, 8($a1)
/* C393E8 80242EB8 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* C393EC 80242EBC 8C42000C */  lw        $v0, 0xc($v0)
/* C393F0 80242EC0 E4400018 */  swc1      $f0, 0x18($v0)
/* C393F4 80242EC4 2A220003 */  slti      $v0, $s1, 3
/* C393F8 80242EC8 1440FFF1 */  bnez      $v0, .L80242E90
/* C393FC 80242ECC 24A50004 */   addiu    $a1, $a1, 4
/* C39400 80242ED0 0000102D */  daddu     $v0, $zero, $zero
.L80242ED4:
/* C39404 80242ED4 8FBF0044 */  lw        $ra, 0x44($sp)
/* C39408 80242ED8 8FB60040 */  lw        $s6, 0x40($sp)
/* C3940C 80242EDC 8FB5003C */  lw        $s5, 0x3c($sp)
/* C39410 80242EE0 8FB40038 */  lw        $s4, 0x38($sp)
/* C39414 80242EE4 8FB30034 */  lw        $s3, 0x34($sp)
/* C39418 80242EE8 8FB20030 */  lw        $s2, 0x30($sp)
/* C3941C 80242EEC 8FB1002C */  lw        $s1, 0x2c($sp)
/* C39420 80242EF0 8FB00028 */  lw        $s0, 0x28($sp)
/* C39424 80242EF4 D7B80058 */  ldc1      $f24, 0x58($sp)
/* C39428 80242EF8 D7B60050 */  ldc1      $f22, 0x50($sp)
/* C3942C 80242EFC D7B40048 */  ldc1      $f20, 0x48($sp)
/* C39430 80242F00 03E00008 */  jr        $ra
/* C39434 80242F04 27BD0060 */   addiu    $sp, $sp, 0x60
