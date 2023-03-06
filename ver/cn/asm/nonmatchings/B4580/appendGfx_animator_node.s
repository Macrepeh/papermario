.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel appendGfx_animator_node
/* B4D14 8011DE34 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* B4D18 8011DE38 AFB60030 */  sw        $s6, 0x30($sp)
/* B4D1C 8011DE3C 00A0B02D */  daddu     $s6, $a1, $zero
/* B4D20 8011DE40 AFBF003C */  sw        $ra, 0x3C($sp)
/* B4D24 8011DE44 AFBE0038 */  sw        $fp, 0x38($sp)
/* B4D28 8011DE48 AFB70034 */  sw        $s7, 0x34($sp)
/* B4D2C 8011DE4C AFB5002C */  sw        $s5, 0x2C($sp)
/* B4D30 8011DE50 AFB40028 */  sw        $s4, 0x28($sp)
/* B4D34 8011DE54 AFB30024 */  sw        $s3, 0x24($sp)
/* B4D38 8011DE58 AFB20020 */  sw        $s2, 0x20($sp)
/* B4D3C 8011DE5C AFB1001C */  sw        $s1, 0x1C($sp)
/* B4D40 8011DE60 AFB00018 */  sw        $s0, 0x18($sp)
/* B4D44 8011DE64 AFA40040 */  sw        $a0, 0x40($sp)
/* B4D48 8011DE68 96C200F4 */  lhu       $v0, 0xF4($s6)
/* B4D4C 8011DE6C 30420080 */  andi      $v0, $v0, 0x80
/* B4D50 8011DE70 10400015 */  beqz      $v0, .LIQUE_8011DEC8
/* B4D54 8011DE74 00C0982D */   daddu    $s3, $a2, $zero
/* B4D58 8011DE78 0000882D */  daddu     $s1, $zero, $zero
/* B4D5C 8011DE7C 26D200B4 */  addiu     $s2, $s6, 0xB4
/* B4D60 8011DE80 02C0802D */  daddu     $s0, $s6, $zero
.LIQUE_8011DE84:
/* B4D64 8011DE84 8E020004 */  lw        $v0, 0x4($s0)
/* B4D68 8011DE88 5040000A */  beql      $v0, $zero, .LIQUE_8011DEB4
/* B4D6C 8011DE8C 26310001 */   addiu    $s1, $s1, 0x1
/* B4D70 8011DE90 0240202D */  daddu     $a0, $s2, $zero
/* B4D74 8011DE94 0260282D */  daddu     $a1, $s3, $zero
/* B4D78 8011DE98 0C0196F0 */  jal       guMtxCatF
/* B4D7C 8011DE9C 0240302D */   daddu    $a2, $s2, $zero
/* B4D80 8011DEA0 8FA40040 */  lw        $a0, 0x40($sp)
/* B4D84 8011DEA4 8E050004 */  lw        $a1, 0x4($s0)
/* B4D88 8011DEA8 0C04778D */  jal       appendGfx_animator_node
/* B4D8C 8011DEAC 0240302D */   daddu    $a2, $s2, $zero
/* B4D90 8011DEB0 26310001 */  addiu     $s1, $s1, 0x1
.LIQUE_8011DEB4:
/* B4D94 8011DEB4 2A220020 */  slti      $v0, $s1, 0x20
/* B4D98 8011DEB8 1440FFF2 */  bnez      $v0, .LIQUE_8011DE84
/* B4D9C 8011DEBC 26100004 */   addiu    $s0, $s0, 0x4
/* B4DA0 8011DEC0 080478C9 */  j         .LIQUE_8011E324
/* B4DA4 8011DEC4 00000000 */   nop
.LIQUE_8011DEC8:
/* B4DA8 8011DEC8 26D000B4 */  addiu     $s0, $s6, 0xB4
/* B4DAC 8011DECC 0200202D */  daddu     $a0, $s0, $zero
/* B4DB0 8011DED0 0260282D */  daddu     $a1, $s3, $zero
/* B4DB4 8011DED4 0C0196F0 */  jal       guMtxCatF
/* B4DB8 8011DED8 0200302D */   daddu    $a2, $s0, $zero
/* B4DBC 8011DEDC 3C120001 */  lui       $s2, (0x12230 >> 16)
/* B4DC0 8011DEE0 36522230 */  ori       $s2, $s2, (0x12230 & 0xFFFF)
/* B4DC4 8011DEE4 0200202D */  daddu     $a0, $s0, $zero
/* B4DC8 8011DEE8 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* B4DCC 8011DEEC 26102E60 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* B4DD0 8011DEF0 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* B4DD4 8011DEF4 2631924C */  addiu     $s1, $s1, %lo(gDisplayContext)
/* B4DD8 8011DEF8 96050000 */  lhu       $a1, 0x0($s0)
/* B4DDC 8011DEFC 8E220000 */  lw        $v0, 0x0($s1)
/* B4DE0 8011DF00 00052980 */  sll       $a1, $a1, 6
/* B4DE4 8011DF04 00B22821 */  addu      $a1, $a1, $s2
/* B4DE8 8011DF08 0C0196B0 */  jal       guMtxF2L
/* B4DEC 8011DF0C 00452821 */   addu     $a1, $v0, $a1
/* B4DF0 8011DF10 3C03DA38 */  lui       $v1, (0xDA380003 >> 16)
/* B4DF4 8011DF14 34630003 */  ori       $v1, $v1, (0xDA380003 & 0xFFFF)
/* B4DF8 8011DF18 3C05E300 */  lui       $a1, (0xE3000F00 >> 16)
/* B4DFC 8011DF1C 34A50F00 */  ori       $a1, $a1, (0xE3000F00 & 0xFFFF)
/* B4E00 8011DF20 3C06E300 */  lui       $a2, (0xE3001001 >> 16)
/* B4E04 8011DF24 34C61001 */  ori       $a2, $a2, (0xE3001001 & 0xFFFF)
/* B4E08 8011DF28 3C07D9FD */  lui       $a3, (0xD9FDFFFF >> 16)
/* B4E0C 8011DF2C 3C09800A */  lui       $t1, %hi(gMasterGfxPos)
/* B4E10 8011DF30 25299244 */  addiu     $t1, $t1, %lo(gMasterGfxPos)
/* B4E14 8011DF34 34E7FFFF */  ori       $a3, $a3, (0xD9FDFFFF & 0xFFFF)
/* B4E18 8011DF38 8D280000 */  lw        $t0, 0x0($t1)
/* B4E1C 8011DF3C 96020000 */  lhu       $v0, 0x0($s0)
/* B4E20 8011DF40 0100202D */  daddu     $a0, $t0, $zero
/* B4E24 8011DF44 25080008 */  addiu     $t0, $t0, 0x8
/* B4E28 8011DF48 AD280000 */  sw        $t0, 0x0($t1)
/* B4E2C 8011DF4C AC830000 */  sw        $v1, 0x0($a0)
/* B4E30 8011DF50 24430001 */  addiu     $v1, $v0, 0x1
/* B4E34 8011DF54 3042FFFF */  andi      $v0, $v0, 0xFFFF
/* B4E38 8011DF58 00021180 */  sll       $v0, $v0, 6
/* B4E3C 8011DF5C A6030000 */  sh        $v1, 0x0($s0)
/* B4E40 8011DF60 8E230000 */  lw        $v1, 0x0($s1)
/* B4E44 8011DF64 00521021 */  addu      $v0, $v0, $s2
/* B4E48 8011DF68 00621821 */  addu      $v1, $v1, $v0
/* B4E4C 8011DF6C 25020008 */  addiu     $v0, $t0, 0x8
/* B4E50 8011DF70 AC830004 */  sw        $v1, 0x4($a0)
/* B4E54 8011DF74 AD220000 */  sw        $v0, 0x0($t1)
/* B4E58 8011DF78 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* B4E5C 8011DF7C AD020000 */  sw        $v0, 0x0($t0)
/* B4E60 8011DF80 25020010 */  addiu     $v0, $t0, 0x10
/* B4E64 8011DF84 AD000004 */  sw        $zero, 0x4($t0)
/* B4E68 8011DF88 AD220000 */  sw        $v0, 0x0($t1)
/* B4E6C 8011DF8C 3C02D700 */  lui       $v0, (0xD7000000 >> 16)
/* B4E70 8011DF90 AD020008 */  sw        $v0, 0x8($t0)
/* B4E74 8011DF94 25020018 */  addiu     $v0, $t0, 0x18
/* B4E78 8011DF98 AD00000C */  sw        $zero, 0xC($t0)
/* B4E7C 8011DF9C AD220000 */  sw        $v0, 0x0($t1)
/* B4E80 8011DFA0 25020020 */  addiu     $v0, $t0, 0x20
/* B4E84 8011DFA4 AD050010 */  sw        $a1, 0x10($t0)
/* B4E88 8011DFA8 AD000014 */  sw        $zero, 0x14($t0)
/* B4E8C 8011DFAC AD220000 */  sw        $v0, 0x0($t1)
/* B4E90 8011DFB0 25020028 */  addiu     $v0, $t0, 0x28
/* B4E94 8011DFB4 AD060018 */  sw        $a2, 0x18($t0)
/* B4E98 8011DFB8 AD00001C */  sw        $zero, 0x1C($t0)
/* B4E9C 8011DFBC AD220000 */  sw        $v0, 0x0($t1)
/* B4EA0 8011DFC0 AD070020 */  sw        $a3, 0x20($t0)
/* B4EA4 8011DFC4 AD000024 */  sw        $zero, 0x24($t0)
/* B4EA8 8011DFC8 8FAA0040 */  lw        $t2, 0x40($sp)
/* B4EAC 8011DFCC 8D420000 */  lw        $v0, 0x0($t2)
/* B4EB0 8011DFD0 3C030001 */  lui       $v1, (0x10000 >> 16)
/* B4EB4 8011DFD4 00431024 */  and       $v0, $v0, $v1
/* B4EB8 8011DFD8 10400007 */  beqz      $v0, .LIQUE_8011DFF8
/* B4EBC 8011DFDC 3C02D9FF */   lui      $v0, (0xD9FFFFFF >> 16)
/* B4EC0 8011DFE0 3442FFFF */  ori       $v0, $v0, (0xD9FFFFFF & 0xFFFF)
/* B4EC4 8011DFE4 25030030 */  addiu     $v1, $t0, 0x30
/* B4EC8 8011DFE8 AD230000 */  sw        $v1, 0x0($t1)
/* B4ECC 8011DFEC AD020028 */  sw        $v0, 0x28($t0)
/* B4ED0 8011DFF0 24020400 */  addiu     $v0, $zero, 0x400
/* B4ED4 8011DFF4 AD02002C */  sw        $v0, 0x2C($t0)
.LIQUE_8011DFF8:
/* B4ED8 8011DFF8 3C028015 */  lui       $v0, %hi(gAnimModelFogEnabled)
/* B4EDC 8011DFFC 8C4221C4 */  lw        $v0, %lo(gAnimModelFogEnabled)($v0)
/* B4EE0 8011E000 1440000C */  bnez      $v0, .LIQUE_8011E034
/* B4EE4 8011E004 3C04FC12 */   lui      $a0, (0xFC121E04 >> 16)
/* B4EE8 8011E008 3C05FCFF */  lui       $a1, (0xFCFFFFFF >> 16)
/* B4EEC 8011E00C 34A5FFFF */  ori       $a1, $a1, (0xFCFFFFFF & 0xFFFF)
/* B4EF0 8011E010 3C04FFFC */  lui       $a0, (0xFFFCF279 >> 16)
/* B4EF4 8011E014 8D220000 */  lw        $v0, 0x0($t1)
/* B4EF8 8011E018 3484F279 */  ori       $a0, $a0, (0xFFFCF279 & 0xFFFF)
/* B4EFC 8011E01C 0040182D */  daddu     $v1, $v0, $zero
/* B4F00 8011E020 24420008 */  addiu     $v0, $v0, 0x8
/* B4F04 8011E024 AD220000 */  sw        $v0, 0x0($t1)
/* B4F08 8011E028 AC650000 */  sw        $a1, 0x0($v1)
/* B4F0C 8011E02C 08047815 */  j         .LIQUE_8011E054
/* B4F10 8011E030 AC640004 */   sw       $a0, 0x4($v1)
.LIQUE_8011E034:
/* B4F14 8011E034 8D220000 */  lw        $v0, 0x0($t1)
/* B4F18 8011E038 34841E04 */  ori       $a0, $a0, (0xFC121E04 & 0xFFFF)
/* B4F1C 8011E03C 0040182D */  daddu     $v1, $v0, $zero
/* B4F20 8011E040 24420008 */  addiu     $v0, $v0, 0x8
/* B4F24 8011E044 AD220000 */  sw        $v0, 0x0($t1)
/* B4F28 8011E048 2402F3F8 */  addiu     $v0, $zero, -0xC08
/* B4F2C 8011E04C AC640000 */  sw        $a0, 0x0($v1)
/* B4F30 8011E050 AC620004 */  sw        $v0, 0x4($v1)
.LIQUE_8011E054:
/* B4F34 8011E054 3C10800A */  lui       $s0, %hi(gMasterGfxPos)
/* B4F38 8011E058 26109244 */  addiu     $s0, $s0, %lo(gMasterGfxPos)
/* B4F3C 8011E05C 8E020000 */  lw        $v0, 0x0($s0)
/* B4F40 8011E060 3C11E700 */  lui       $s1, (0xE7000000 >> 16)
/* B4F44 8011E064 0040182D */  daddu     $v1, $v0, $zero
/* B4F48 8011E068 AC710000 */  sw        $s1, 0x0($v1)
/* B4F4C 8011E06C AC600004 */  sw        $zero, 0x4($v1)
/* B4F50 8011E070 8FAA0040 */  lw        $t2, 0x40($sp)
/* B4F54 8011E074 8D4302D4 */  lw        $v1, 0x2D4($t2)
/* B4F58 8011E078 24420008 */  addiu     $v0, $v0, 0x8
/* B4F5C 8011E07C 10600004 */  beqz      $v1, .LIQUE_8011E090
/* B4F60 8011E080 AE020000 */   sw       $v0, 0x0($s0)
/* B4F64 8011E084 8D4402D8 */  lw        $a0, 0x2D8($t2)
/* B4F68 8011E088 0060F809 */  jalr      $v1
/* B4F6C 8011E08C 00000000 */   nop
.LIQUE_8011E090:
/* B4F70 8011E090 8E040000 */  lw        $a0, 0x0($s0)
/* B4F74 8011E094 0080102D */  daddu     $v0, $a0, $zero
/* B4F78 8011E098 AC510000 */  sw        $s1, 0x0($v0)
/* B4F7C 8011E09C AC400004 */  sw        $zero, 0x4($v0)
/* B4F80 8011E0A0 8EC50000 */  lw        $a1, 0x0($s6)
/* B4F84 8011E0A4 24840008 */  addiu     $a0, $a0, 0x8
/* B4F88 8011E0A8 10A00089 */  beqz      $a1, .LIQUE_8011E2D0
/* B4F8C 8011E0AC AE040000 */   sw       $a0, 0x0($s0)
/* B4F90 8011E0B0 86C200F8 */  lh        $v0, 0xF8($s6)
/* B4F94 8011E0B4 04410008 */  bgez      $v0, .LIQUE_8011E0D8
/* B4F98 8011E0B8 240200DF */   addiu    $v0, $zero, 0xDF
/* B4F9C 8011E0BC 3C02DE00 */  lui       $v0, (0xDE000000 >> 16)
/* B4FA0 8011E0C0 AC820000 */  sw        $v0, 0x0($a0)
/* B4FA4 8011E0C4 8EC30000 */  lw        $v1, 0x0($s6)
/* B4FA8 8011E0C8 24820008 */  addiu     $v0, $a0, 0x8
/* B4FAC 8011E0CC AE020000 */  sw        $v0, 0x0($s0)
/* B4FB0 8011E0D0 080478B4 */  j         .LIQUE_8011E2D0
/* B4FB4 8011E0D4 AC830004 */   sw       $v1, 0x4($a0)
.LIQUE_8011E0D8:
/* B4FB8 8011E0D8 90A30000 */  lbu       $v1, 0x0($a1)
/* B4FBC 8011E0DC 10620008 */  beq       $v1, $v0, .LIQUE_8011E100
/* B4FC0 8011E0E0 0000202D */   daddu    $a0, $zero, $zero
/* B4FC4 8011E0E4 0040302D */  daddu     $a2, $v0, $zero
/* B4FC8 8011E0E8 24A20008 */  addiu     $v0, $a1, 0x8
.LIQUE_8011E0EC:
/* B4FCC 8011E0EC 24840001 */  addiu     $a0, $a0, 0x1
/* B4FD0 8011E0F0 8C450000 */  lw        $a1, 0x0($v0)
/* B4FD4 8011E0F4 00051E02 */  srl       $v1, $a1, 24
/* B4FD8 8011E0F8 1466FFFC */  bne       $v1, $a2, .LIQUE_8011E0EC
/* B4FDC 8011E0FC 24420008 */   addiu    $v0, $v0, 0x8
.LIQUE_8011E100:
/* B4FE0 8011E100 24840001 */  addiu     $a0, $a0, 0x1
/* B4FE4 8011E104 0000182D */  daddu     $v1, $zero, $zero
/* B4FE8 8011E108 3C058015 */  lui       $a1, %hi(D_801536C0)
/* B4FEC 8011E10C 24A51E40 */  addiu     $a1, $a1, %lo(D_801536C0)
/* B4FF0 8011E110 000310C0 */  sll       $v0, $v1, 3
.LIQUE_8011E114:
/* B4FF4 8011E114 0045B821 */  addu      $s7, $v0, $a1
/* B4FF8 8011E118 8EE20000 */  lw        $v0, 0x0($s7)
/* B4FFC 8011E11C 04400006 */  bltz      $v0, .LIQUE_8011E138
/* B5000 8011E120 28620060 */   slti     $v0, $v1, 0x60
/* B5004 8011E124 24630001 */  addiu     $v1, $v1, 0x1
/* B5008 8011E128 28620060 */  slti      $v0, $v1, 0x60
/* B500C 8011E12C 1440FFF9 */  bnez      $v0, .LIQUE_8011E114
/* B5010 8011E130 000310C0 */   sll      $v0, $v1, 3
/* B5014 8011E134 28620060 */  slti      $v0, $v1, 0x60
.LIQUE_8011E138:
/* B5018 8011E138 14400003 */  bnez      $v0, .LIQUE_8011E148
/* B501C 8011E13C 00000000 */   nop
.LIQUE_8011E140:
/* B5020 8011E140 08047850 */  j         .LIQUE_8011E140
/* B5024 8011E144 00000000 */   nop
.LIQUE_8011E148:
/* B5028 8011E148 0C00AA3E */  jal       general_heap_malloc
/* B502C 8011E14C 000420C0 */   sll      $a0, $a0, 3
/* B5030 8011E150 0040982D */  daddu     $s3, $v0, $zero
/* B5034 8011E154 16600003 */  bnez      $s3, .LIQUE_8011E164
/* B5038 8011E158 AEF30004 */   sw       $s3, 0x4($s7)
.LIQUE_8011E15C:
/* B503C 8011E15C 08047857 */  j         .LIQUE_8011E15C
/* B5040 8011E160 00000000 */   nop
.LIQUE_8011E164:
/* B5044 8011E164 0000A82D */  daddu     $s5, $zero, $zero
/* B5048 8011E168 24020003 */  addiu     $v0, $zero, 0x3
/* B504C 8011E16C AEE20000 */  sw        $v0, 0x0($s7)
/* B5050 8011E170 8EC20000 */  lw        $v0, 0x0($s6)
/* B5054 8011E174 8C450000 */  lw        $a1, 0x0($v0)
/* B5058 8011E178 8C470004 */  lw        $a3, 0x4($v0)
/* B505C 8011E17C 240200DF */  addiu     $v0, $zero, 0xDF
/* B5060 8011E180 00051E02 */  srl       $v1, $a1, 24
/* B5064 8011E184 10620044 */  beq       $v1, $v0, .LIQUE_8011E298
/* B5068 8011E188 24140002 */   addiu    $s4, $zero, 0x2
/* B506C 8011E18C 3C1E0100 */  lui       $fp, (0x1000000 >> 16)
/* B5070 8011E190 2672FFFC */  addiu     $s2, $s3, -0x4
.LIQUE_8011E194:
/* B5074 8011E194 24020001 */  addiu     $v0, $zero, 0x1
/* B5078 8011E198 5462002F */  bnel      $v1, $v0, .LIQUE_8011E258
/* B507C 8011E19C 0260102D */   daddu    $v0, $s3, $zero
/* B5080 8011E1A0 00451006 */  srlv      $v0, $a1, $v0
/* B5084 8011E1A4 3051007F */  andi      $s1, $v0, 0x7F
/* B5088 8011E1A8 00051302 */  srl       $v0, $a1, 12
/* B508C 8011E1AC 305000FF */  andi      $s0, $v0, 0xFF
/* B5090 8011E1B0 8EC200FC */  lw        $v0, 0xFC($s6)
/* B5094 8011E1B4 14400010 */  bnez      $v0, .LIQUE_8011E1F8
/* B5098 8011E1B8 02308823 */   subu     $s1, $s1, $s0
/* B509C 8011E1BC 26520008 */  addiu     $s2, $s2, 0x8
/* B50A0 8011E1C0 26730008 */  addiu     $s3, $s3, 0x8
/* B50A4 8011E1C4 00101300 */  sll       $v0, $s0, 12
/* B50A8 8011E1C8 02301821 */  addu      $v1, $s1, $s0
/* B50AC 8011E1CC 3063007F */  andi      $v1, $v1, 0x7F
/* B50B0 8011E1D0 00031840 */  sll       $v1, $v1, 1
/* B50B4 8011E1D4 007E1825 */  or        $v1, $v1, $fp
/* B50B8 8011E1D8 86C400F8 */  lh        $a0, 0xF8($s6)
/* B50BC 8011E1DC 00431025 */  or        $v0, $v0, $v1
/* B50C0 8011E1E0 AE42FFFC */  sw        $v0, -0x4($s2)
/* B50C4 8011E1E4 00952021 */  addu      $a0, $a0, $s5
/* B50C8 8011E1E8 00042100 */  sll       $a0, $a0, 4
/* B50CC 8011E1EC 00E41821 */  addu      $v1, $a3, $a0
/* B50D0 8011E1F0 08047894 */  j         .LIQUE_8011E250
/* B50D4 8011E1F4 AE430000 */   sw       $v1, 0x0($s2)
.LIQUE_8011E1F8:
/* B50D8 8011E1F8 02C0282D */  daddu     $a1, $s6, $zero
/* B50DC 8011E1FC 26520008 */  addiu     $s2, $s2, 0x8
/* B50E0 8011E200 8FA40040 */  lw        $a0, 0x40($sp)
/* B50E4 8011E204 86C200F8 */  lh        $v0, 0xF8($s6)
/* B50E8 8011E208 26730008 */  addiu     $s3, $s3, 0x8
/* B50EC 8011E20C AFB10010 */  sw        $s1, 0x10($sp)
/* B50F0 8011E210 AFB50014 */  sw        $s5, 0x14($sp)
/* B50F4 8011E214 00551021 */  addu      $v0, $v0, $s5
/* B50F8 8011E218 00023040 */  sll       $a2, $v0, 1
/* B50FC 8011E21C 00C23021 */  addu      $a2, $a2, $v0
/* B5100 8011E220 00063040 */  sll       $a2, $a2, 1
/* B5104 8011E224 00E63021 */  addu      $a2, $a3, $a2
/* B5108 8011E228 0C047098 */  jal       animator_copy_vertices_to_buffer
/* B510C 8011E22C 0200382D */   daddu    $a3, $s0, $zero
/* B5110 8011E230 00102300 */  sll       $a0, $s0, 12
/* B5114 8011E234 02301821 */  addu      $v1, $s1, $s0
/* B5118 8011E238 3063007F */  andi      $v1, $v1, 0x7F
/* B511C 8011E23C 00031840 */  sll       $v1, $v1, 1
/* B5120 8011E240 007E1825 */  or        $v1, $v1, $fp
/* B5124 8011E244 00832025 */  or        $a0, $a0, $v1
/* B5128 8011E248 AE44FFFC */  sw        $a0, -0x4($s2)
/* B512C 8011E24C AE420000 */  sw        $v0, 0x0($s2)
.LIQUE_8011E250:
/* B5130 8011E250 0804789A */  j         .LIQUE_8011E268
/* B5134 8011E254 02B0A821 */   addu     $s5, $s5, $s0
.LIQUE_8011E258:
/* B5138 8011E258 26520008 */  addiu     $s2, $s2, 0x8
/* B513C 8011E25C 26730008 */  addiu     $s3, $s3, 0x8
/* B5140 8011E260 AC450000 */  sw        $a1, 0x0($v0)
/* B5144 8011E264 AC470004 */  sw        $a3, 0x4($v0)
.LIQUE_8011E268:
/* B5148 8011E268 00141080 */  sll       $v0, $s4, 2
/* B514C 8011E26C 26940001 */  addiu     $s4, $s4, 0x1
/* B5150 8011E270 00141880 */  sll       $v1, $s4, 2
/* B5154 8011E274 8EC40000 */  lw        $a0, 0x0($s6)
/* B5158 8011E278 00441021 */  addu      $v0, $v0, $a0
/* B515C 8011E27C 00641821 */  addu      $v1, $v1, $a0
/* B5160 8011E280 8C450000 */  lw        $a1, 0x0($v0)
/* B5164 8011E284 240200DF */  addiu     $v0, $zero, 0xDF
/* B5168 8011E288 8C670000 */  lw        $a3, 0x0($v1)
/* B516C 8011E28C 00051E02 */  srl       $v1, $a1, 24
/* B5170 8011E290 1462FFC0 */  bne       $v1, $v0, .LIQUE_8011E194
/* B5174 8011E294 26940001 */   addiu    $s4, $s4, 0x1
.LIQUE_8011E298:
/* B5178 8011E298 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* B517C 8011E29C 24A59244 */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* B5180 8011E2A0 0260202D */  daddu     $a0, $s3, $zero
/* B5184 8011E2A4 8CA30000 */  lw        $v1, 0x0($a1)
/* B5188 8011E2A8 3C02DF00 */  lui       $v0, (0xDF000000 >> 16)
/* B518C 8011E2AC AC820000 */  sw        $v0, 0x0($a0)
/* B5190 8011E2B0 3C02DE00 */  lui       $v0, (0xDE000000 >> 16)
/* B5194 8011E2B4 AC800004 */  sw        $zero, 0x4($a0)
/* B5198 8011E2B8 0060202D */  daddu     $a0, $v1, $zero
/* B519C 8011E2BC AC820000 */  sw        $v0, 0x0($a0)
/* B51A0 8011E2C0 8EE20004 */  lw        $v0, 0x4($s7)
/* B51A4 8011E2C4 24630008 */  addiu     $v1, $v1, 0x8
/* B51A8 8011E2C8 ACA30000 */  sw        $v1, 0x0($a1)
/* B51AC 8011E2CC AC820004 */  sw        $v0, 0x4($a0)
.LIQUE_8011E2D0:
/* B51B0 8011E2D0 0000882D */  daddu     $s1, $zero, $zero
/* B51B4 8011E2D4 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* B51B8 8011E2D8 24639244 */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* B51BC 8011E2DC 8C620000 */  lw        $v0, 0x0($v1)
/* B51C0 8011E2E0 02C0802D */  daddu     $s0, $s6, $zero
/* B51C4 8011E2E4 0040202D */  daddu     $a0, $v0, $zero
/* B51C8 8011E2E8 24420008 */  addiu     $v0, $v0, 0x8
/* B51CC 8011E2EC AC620000 */  sw        $v0, 0x0($v1)
/* B51D0 8011E2F0 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* B51D4 8011E2F4 AC820000 */  sw        $v0, 0x0($a0)
/* B51D8 8011E2F8 AC800004 */  sw        $zero, 0x4($a0)
.LIQUE_8011E2FC:
/* B51DC 8011E2FC 8E050004 */  lw        $a1, 0x4($s0)
/* B51E0 8011E300 50A00005 */  beql      $a1, $zero, .LIQUE_8011E318
/* B51E4 8011E304 26310001 */   addiu    $s1, $s1, 0x1
/* B51E8 8011E308 8FA40040 */  lw        $a0, 0x40($sp)
/* B51EC 8011E30C 0C04778D */  jal       appendGfx_animator_node
/* B51F0 8011E310 26C600B4 */   addiu    $a2, $s6, 0xB4
/* B51F4 8011E314 26310001 */  addiu     $s1, $s1, 0x1
.LIQUE_8011E318:
/* B51F8 8011E318 2A220020 */  slti      $v0, $s1, 0x20
/* B51FC 8011E31C 1440FFF7 */  bnez      $v0, .LIQUE_8011E2FC
/* B5200 8011E320 26100004 */   addiu    $s0, $s0, 0x4
.LIQUE_8011E324:
/* B5204 8011E324 8FBF003C */  lw        $ra, 0x3C($sp)
/* B5208 8011E328 8FBE0038 */  lw        $fp, 0x38($sp)
/* B520C 8011E32C 8FB70034 */  lw        $s7, 0x34($sp)
/* B5210 8011E330 8FB60030 */  lw        $s6, 0x30($sp)
/* B5214 8011E334 8FB5002C */  lw        $s5, 0x2C($sp)
/* B5218 8011E338 8FB40028 */  lw        $s4, 0x28($sp)
/* B521C 8011E33C 8FB30024 */  lw        $s3, 0x24($sp)
/* B5220 8011E340 8FB20020 */  lw        $s2, 0x20($sp)
/* B5224 8011E344 8FB1001C */  lw        $s1, 0x1C($sp)
/* B5228 8011E348 8FB00018 */  lw        $s0, 0x18($sp)
/* B522C 8011E34C 03E00008 */  jr        $ra
/* B5230 8011E350 27BD0040 */   addiu    $sp, $sp, 0x40
