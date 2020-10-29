.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802400F0_8233B0
/* 8233B0 802400F0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 8233B4 802400F4 AFB10014 */  sw        $s1, 0x14($sp)
/* 8233B8 802400F8 0080882D */  daddu     $s1, $a0, $zero
/* 8233BC 802400FC AFBF001C */  sw        $ra, 0x1c($sp)
/* 8233C0 80240100 AFB20018 */  sw        $s2, 0x18($sp)
/* 8233C4 80240104 0C016AFA */  jal       get_current_map_header
/* 8233C8 80240108 AFB00010 */   sw       $s0, 0x10($sp)
/* 8233CC 8024010C 0220202D */  daddu     $a0, $s1, $zero
/* 8233D0 80240110 3C05FE36 */  lui       $a1, 0xfe36
/* 8233D4 80240114 34A53C80 */  ori       $a1, $a1, 0x3c80
/* 8233D8 80240118 0C0B1EAF */  jal       get_variable
/* 8233DC 8024011C 0040902D */   daddu    $s2, $v0, $zero
/* 8233E0 80240120 0220202D */  daddu     $a0, $s1, $zero
/* 8233E4 80240124 3C05FE36 */  lui       $a1, 0xfe36
/* 8233E8 80240128 8E430014 */  lw        $v1, 0x14($s2)
/* 8233EC 8024012C 00028100 */  sll       $s0, $v0, 4
/* 8233F0 80240130 02031821 */  addu      $v1, $s0, $v1
/* 8233F4 80240134 C4600000 */  lwc1      $f0, ($v1)
/* 8233F8 80240138 4600008D */  trunc.w.s $f2, $f0
/* 8233FC 8024013C 44061000 */  mfc1      $a2, $f2
/* 823400 80240140 0C0B2026 */  jal       set_variable
/* 823404 80240144 34A53C81 */   ori      $a1, $a1, 0x3c81
/* 823408 80240148 0220202D */  daddu     $a0, $s1, $zero
/* 82340C 8024014C 8E420014 */  lw        $v0, 0x14($s2)
/* 823410 80240150 3C05FE36 */  lui       $a1, 0xfe36
/* 823414 80240154 02021021 */  addu      $v0, $s0, $v0
/* 823418 80240158 C4400004 */  lwc1      $f0, 4($v0)
/* 82341C 8024015C 4600008D */  trunc.w.s $f2, $f0
/* 823420 80240160 44061000 */  mfc1      $a2, $f2
/* 823424 80240164 0C0B2026 */  jal       set_variable
/* 823428 80240168 34A53C82 */   ori      $a1, $a1, 0x3c82
/* 82342C 8024016C 0220202D */  daddu     $a0, $s1, $zero
/* 823430 80240170 8E420014 */  lw        $v0, 0x14($s2)
/* 823434 80240174 3C05FE36 */  lui       $a1, 0xfe36
/* 823438 80240178 02021021 */  addu      $v0, $s0, $v0
/* 82343C 8024017C C4400008 */  lwc1      $f0, 8($v0)
/* 823440 80240180 4600008D */  trunc.w.s $f2, $f0
/* 823444 80240184 44061000 */  mfc1      $a2, $f2
/* 823448 80240188 0C0B2026 */  jal       set_variable
/* 82344C 8024018C 34A53C83 */   ori      $a1, $a1, 0x3c83
/* 823450 80240190 0220202D */  daddu     $a0, $s1, $zero
/* 823454 80240194 8E420014 */  lw        $v0, 0x14($s2)
/* 823458 80240198 3C05FE36 */  lui       $a1, 0xfe36
/* 82345C 8024019C 02028021 */  addu      $s0, $s0, $v0
/* 823460 802401A0 C600000C */  lwc1      $f0, 0xc($s0)
/* 823464 802401A4 4600008D */  trunc.w.s $f2, $f0
/* 823468 802401A8 44061000 */  mfc1      $a2, $f2
/* 82346C 802401AC 0C0B2026 */  jal       set_variable
/* 823470 802401B0 34A53C84 */   ori      $a1, $a1, 0x3c84
/* 823474 802401B4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 823478 802401B8 8FB20018 */  lw        $s2, 0x18($sp)
/* 82347C 802401BC 8FB10014 */  lw        $s1, 0x14($sp)
/* 823480 802401C0 8FB00010 */  lw        $s0, 0x10($sp)
/* 823484 802401C4 24020002 */  addiu     $v0, $zero, 2
/* 823488 802401C8 03E00008 */  jr        $ra
/* 82348C 802401CC 27BD0020 */   addiu    $sp, $sp, 0x20