.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel guRotateF
/* 414A0 800660A0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 414A4 800660A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 414A8 800660A8 00808021 */  addu      $s0, $a0, $zero
/* 414AC 800660AC 27A40050 */  addiu     $a0, $sp, 0x50
/* 414B0 800660B0 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 414B4 800660B4 4485A000 */  mtc1      $a1, $f20
/* 414B8 800660B8 27A50054 */  addiu     $a1, $sp, 0x54
/* 414BC 800660BC AFA60050 */  sw        $a2, 0x50($sp)
/* 414C0 800660C0 27A60058 */  addiu     $a2, $sp, 0x58
/* 414C4 800660C4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 414C8 800660C8 F7BE0040 */  sdc1      $f30, 0x40($sp)
/* 414CC 800660CC F7BC0038 */  sdc1      $f28, 0x38($sp)
/* 414D0 800660D0 F7BA0030 */  sdc1      $f26, 0x30($sp)
/* 414D4 800660D4 F7B80028 */  sdc1      $f24, 0x28($sp)
/* 414D8 800660D8 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 414DC 800660DC 0C01AF10 */  jal       guNormalize
/* 414E0 800660E0 AFA70054 */   sw       $a3, 0x54($sp)
/* 414E4 800660E4 3C018009 */  lui       $at, %hi(D_IQUE_800944E0)
/* 414E8 800660E8 C42044E0 */  lwc1      $f0, %lo(D_IQUE_800944E0)($at)
/* 414EC 800660EC 4600A502 */  mul.s     $f20, $f20, $f0
/* 414F0 800660F0 0C00A78F */  jal       sin_rad
/* 414F4 800660F4 4600A306 */   mov.s    $f12, $f20
/* 414F8 800660F8 4600A306 */  mov.s     $f12, $f20
/* 414FC 800660FC 0C00A7A8 */  jal       cos_rad
/* 41500 80066100 46000786 */   mov.s    $f30, $f0
/* 41504 80066104 C7A20050 */  lwc1      $f2, 0x50($sp)
/* 41508 80066108 C7B60054 */  lwc1      $f22, 0x54($sp)
/* 4150C 8006610C 46161702 */  mul.s     $f28, $f2, $f22
/* 41510 80066110 C7B40058 */  lwc1      $f20, 0x58($sp)
/* 41514 80066114 4614B582 */  mul.s     $f22, $f22, $f20
/* 41518 80066118 4602A502 */  mul.s     $f20, $f20, $f2
/* 4151C 8006611C 3C013F80 */  lui       $at, (0x3F800000 >> 16)
/* 41520 80066120 4481D000 */  mtc1      $at, $f26
/* 41524 80066124 46000606 */  mov.s     $f24, $f0
/* 41528 80066128 4618D381 */  sub.s     $f14, $f26, $f24
/* 4152C 8006612C 460EE702 */  mul.s     $f28, $f28, $f14
/* 41530 80066130 460EB582 */  mul.s     $f22, $f22, $f14
/* 41534 80066134 460EA502 */  mul.s     $f20, $f20, $f14
/* 41538 80066138 0C019698 */  jal       guMtxIdentF
/* 4153C 8006613C 02002021 */   addu     $a0, $s0, $zero
/* 41540 80066140 C7A40050 */  lwc1      $f4, 0x50($sp)
/* 41544 80066144 46042382 */  mul.s     $f14, $f4, $f4
/* 41548 80066148 461E2102 */  mul.s     $f4, $f4, $f30
/* 4154C 8006614C 460ED281 */  sub.s     $f10, $f26, $f14
/* 41550 80066150 460AC282 */  mul.s     $f10, $f24, $f10
/* 41554 80066154 460A7280 */  add.s     $f10, $f14, $f10
/* 41558 80066158 C7A00054 */  lwc1      $f0, 0x54($sp)
/* 4155C 8006615C 46000382 */  mul.s     $f14, $f0, $f0
/* 41560 80066160 461E0002 */  mul.s     $f0, $f0, $f30
/* 41564 80066164 460ED181 */  sub.s     $f6, $f26, $f14
/* 41568 80066168 4606C182 */  mul.s     $f6, $f24, $f6
/* 4156C 8006616C 46067180 */  add.s     $f6, $f14, $f6
/* 41570 80066170 C7A20058 */  lwc1      $f2, 0x58($sp)
/* 41574 80066174 46021382 */  mul.s     $f14, $f2, $f2
/* 41578 80066178 461E1082 */  mul.s     $f2, $f2, $f30
/* 4157C 8006617C 4604B201 */  sub.s     $f8, $f22, $f4
/* 41580 80066180 4604B580 */  add.s     $f22, $f22, $f4
/* 41584 80066184 4600A300 */  add.s     $f12, $f20, $f0
/* 41588 80066188 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4158C 8006618C 4600A501 */  sub.s     $f20, $f20, $f0
/* 41590 80066190 E6160018 */  swc1      $f22, 0x18($s0)
/* 41594 80066194 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 41598 80066198 460ED681 */  sub.s     $f26, $f26, $f14
/* 4159C 8006619C E6080024 */  swc1      $f8, 0x24($s0)
/* 415A0 800661A0 4602E101 */  sub.s     $f4, $f28, $f2
/* 415A4 800661A4 E60A0000 */  swc1      $f10, 0x0($s0)
/* 415A8 800661A8 E6140008 */  swc1      $f20, 0x8($s0)
/* 415AC 800661AC 4602E700 */  add.s     $f28, $f28, $f2
/* 415B0 800661B0 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 415B4 800661B4 D7BE0040 */  ldc1      $f30, 0x40($sp)
/* 415B8 800661B8 461AC602 */  mul.s     $f24, $f24, $f26
/* 415BC 800661BC E60C0020 */  swc1      $f12, 0x20($s0)
/* 415C0 800661C0 E61C0004 */  swc1      $f28, 0x4($s0)
/* 415C4 800661C4 D7BC0038 */  ldc1      $f28, 0x38($sp)
/* 415C8 800661C8 D7BA0030 */  ldc1      $f26, 0x30($sp)
/* 415CC 800661CC 46187600 */  add.s     $f24, $f14, $f24
/* 415D0 800661D0 E6060014 */  swc1      $f6, 0x14($s0)
/* 415D4 800661D4 E6040010 */  swc1      $f4, 0x10($s0)
/* 415D8 800661D8 E6180028 */  swc1      $f24, 0x28($s0)
/* 415DC 800661DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 415E0 800661E0 D7B80028 */  ldc1      $f24, 0x28($sp)
/* 415E4 800661E4 03E00008 */  jr        $ra
/* 415E8 800661E8 27BD0048 */   addiu    $sp, $sp, 0x48

glabel guRotate
/* 415EC 800661EC 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 415F0 800661F0 AFB00058 */  sw        $s0, 0x58($sp)
/* 415F4 800661F4 00808021 */  addu      $s0, $a0, $zero
/* 415F8 800661F8 C7A00070 */  lwc1      $f0, 0x70($sp)
/* 415FC 800661FC 27A40018 */  addiu     $a0, $sp, 0x18
/* 41600 80066200 AFBF005C */  sw        $ra, 0x5C($sp)
/* 41604 80066204 0C019828 */  jal       guRotateF
/* 41608 80066208 E7A00010 */   swc1     $f0, 0x10($sp)
/* 4160C 8006620C 27A40018 */  addiu     $a0, $sp, 0x18
/* 41610 80066210 0C0196B0 */  jal       guMtxF2L
/* 41614 80066214 02002821 */   addu     $a1, $s0, $zero
/* 41618 80066218 8FBF005C */  lw        $ra, 0x5C($sp)
/* 4161C 8006621C 8FB00058 */  lw        $s0, 0x58($sp)
/* 41620 80066220 03E00008 */  jr        $ra
/* 41624 80066224 27BD0060 */   addiu    $sp, $sp, 0x60
/* 41628 80066228 00000000 */  nop
/* 4162C 8006622C 00000000 */  nop
