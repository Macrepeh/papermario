.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel guTranslate
/* 411C0 80065DC0 3C014780 */  lui       $at, (0x47800000 >> 16)
/* 411C4 80065DC4 44812000 */  mtc1      $at, $f4
/* 411C8 80065DC8 44853000 */  mtc1      $a1, $f6
/* 411CC 80065DCC 46043202 */  mul.s     $f8, $f6, $f4
/* 411D0 80065DD0 4600428D */  trunc.w.s $f10, $f8
/* 411D4 80065DD4 44095000 */  mfc1      $t1, $f10
/* 411D8 80065DD8 44863000 */  mtc1      $a2, $f6
/* 411DC 80065DDC 46043202 */  mul.s     $f8, $f6, $f4
/* 411E0 80065DE0 4600428D */  trunc.w.s $f10, $f8
/* 411E4 80065DE4 440B5000 */  mfc1      $t3, $f10
/* 411E8 80065DE8 00095402 */  srl       $t2, $t1, 16
/* 411EC 80065DEC 000A4400 */  sll       $t0, $t2, 16
/* 411F0 80065DF0 000B5402 */  srl       $t2, $t3, 16
/* 411F4 80065DF4 010A4025 */  or        $t0, $t0, $t2
/* 411F8 80065DF8 AC880018 */  sw        $t0, 0x18($a0)
/* 411FC 80065DFC 00094400 */  sll       $t0, $t1, 16
/* 41200 80065E00 000B5400 */  sll       $t2, $t3, 16
/* 41204 80065E04 000A5402 */  srl       $t2, $t2, 16
/* 41208 80065E08 010A4025 */  or        $t0, $t0, $t2
/* 4120C 80065E0C AC880038 */  sw        $t0, 0x38($a0)
/* 41210 80065E10 44873000 */  mtc1      $a3, $f6
/* 41214 80065E14 46043202 */  mul.s     $f8, $f6, $f4
/* 41218 80065E18 4600428D */  trunc.w.s $f10, $f8
/* 4121C 80065E1C 44095000 */  mfc1      $t1, $f10
/* 41220 80065E20 00095402 */  srl       $t2, $t1, 16
/* 41224 80065E24 000A4400 */  sll       $t0, $t2, 16
/* 41228 80065E28 25080001 */  addiu     $t0, $t0, 0x1
/* 4122C 80065E2C AC88001C */  sw        $t0, 0x1C($a0)
/* 41230 80065E30 00095400 */  sll       $t2, $t1, 16
/* 41234 80065E34 AC8A003C */  sw        $t2, 0x3C($a0)
/* 41238 80065E38 AC800000 */  sw        $zero, 0x0($a0)
/* 4123C 80065E3C AC800004 */  sw        $zero, 0x4($a0)
/* 41240 80065E40 AC800008 */  sw        $zero, 0x8($a0)
/* 41244 80065E44 AC80000C */  sw        $zero, 0xC($a0)
/* 41248 80065E48 AC800010 */  sw        $zero, 0x10($a0)
/* 4124C 80065E4C AC800014 */  sw        $zero, 0x14($a0)
/* 41250 80065E50 AC800020 */  sw        $zero, 0x20($a0)
/* 41254 80065E54 AC800024 */  sw        $zero, 0x24($a0)
/* 41258 80065E58 AC800028 */  sw        $zero, 0x28($a0)
/* 4125C 80065E5C AC80002C */  sw        $zero, 0x2C($a0)
/* 41260 80065E60 AC800030 */  sw        $zero, 0x30($a0)
/* 41264 80065E64 AC800034 */  sw        $zero, 0x34($a0)
/* 41268 80065E68 3C080001 */  lui       $t0, (0x10000 >> 16)
/* 4126C 80065E6C 35080000 */  ori       $t0, $t0, (0x10000 & 0xFFFF)
/* 41270 80065E70 AC880000 */  sw        $t0, 0x0($a0)
/* 41274 80065E74 AC880014 */  sw        $t0, 0x14($a0)
/* 41278 80065E78 3C080000 */  lui       $t0, (0x1 >> 16)
/* 4127C 80065E7C 35080001 */  ori       $t0, $t0, (0x1 & 0xFFFF)
/* 41280 80065E80 03E00008 */  jr        $ra
/* 41284 80065E84 AC880008 */   sw       $t0, 0x8($a0)
/* 41288 80065E88 00000000 */  nop
/* 4128C 80065E8C 00000000 */  nop
/* 41290 80065E90 00000000 */  nop
/* 41294 80065E94 00000000 */  nop
/* 41298 80065E98 00000000 */  nop
/* 4129C 80065E9C 00000000 */  nop
