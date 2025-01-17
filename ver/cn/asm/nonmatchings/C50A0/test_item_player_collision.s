.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel test_item_player_collision
/* C917C 8013229C 27BDFF90 */  addiu     $sp, $sp, -0x70
/* C9180 801322A0 AFB30034 */  sw        $s3, 0x34($sp)
/* C9184 801322A4 0080982D */  daddu     $s3, $a0, $zero
/* C9188 801322A8 AFB1002C */  sw        $s1, 0x2C($sp)
/* C918C 801322AC 3C118011 */  lui       $s1, %hi(gPlayerStatus)
/* C9190 801322B0 2631D3A8 */  addiu     $s1, $s1, %lo(gPlayerStatus)
/* C9194 801322B4 AFB40038 */  sw        $s4, 0x38($sp)
/* C9198 801322B8 3C148011 */  lui       $s4, %hi(gPartnerActionStatus)
/* C919C 801322BC 2694CF90 */  addiu     $s4, $s4, %lo(gPartnerActionStatus)
/* C91A0 801322C0 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* C91A4 801322C4 8C636070 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* C91A8 801322C8 3C04800B */  lui       $a0, %hi(gCameras)
/* C91AC 801322CC 248407D0 */  addiu     $a0, $a0, %lo(gCameras)
/* C91B0 801322D0 AFBF003C */  sw        $ra, 0x3C($sp)
/* C91B4 801322D4 AFB20030 */  sw        $s2, 0x30($sp)
/* C91B8 801322D8 AFB00028 */  sw        $s0, 0x28($sp)
/* C91BC 801322DC F7BE0068 */  sdc1      $f30, 0x68($sp)
/* C91C0 801322E0 F7BC0060 */  sdc1      $f28, 0x60($sp)
/* C91C4 801322E4 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* C91C8 801322E8 F7B80050 */  sdc1      $f24, 0x50($sp)
/* C91CC 801322EC F7B60048 */  sdc1      $f22, 0x48($sp)
/* C91D0 801322F0 F7B40040 */  sdc1      $f20, 0x40($sp)
/* C91D4 801322F4 823200B4 */  lb        $s2, 0xB4($s1)
/* C91D8 801322F8 00031080 */  sll       $v0, $v1, 2
/* C91DC 801322FC 00431021 */  addu      $v0, $v0, $v1
/* C91E0 80132300 00021080 */  sll       $v0, $v0, 2
/* C91E4 80132304 00431023 */  subu      $v0, $v0, $v1
/* C91E8 80132308 000218C0 */  sll       $v1, $v0, 3
/* C91EC 8013230C 00431021 */  addu      $v0, $v0, $v1
/* C91F0 80132310 000210C0 */  sll       $v0, $v0, 3
/* C91F4 80132314 8E630000 */  lw        $v1, 0x0($s3)
/* C91F8 80132318 00448021 */  addu      $s0, $v0, $a0
/* C91FC 8013231C 30620100 */  andi      $v0, $v1, 0x100
/* C9200 80132320 10400003 */  beqz      $v0, .LIQUE_80132330
/* C9204 80132324 2402FEFF */   addiu    $v0, $zero, -0x101
/* C9208 80132328 0804C9BE */  j         .LIQUE_801326F8
/* C920C 8013232C 00621024 */   and      $v0, $v1, $v0
.LIQUE_80132330:
/* C9210 80132330 3C03800A */  lui       $v1, %hi(gEncounterState)
/* C9214 80132334 8C6391CC */  lw        $v1, %lo(gEncounterState)($v1)
/* C9218 80132338 24020002 */  addiu     $v0, $zero, 0x2
/* C921C 8013233C 10620003 */  beq       $v1, $v0, .LIQUE_8013234C
/* C9220 80132340 00000000 */   nop
/* C9224 80132344 146000F6 */  bnez      $v1, .LIQUE_80132720
/* C9228 80132348 0000102D */   daddu    $v0, $zero, $zero
.LIQUE_8013234C:
/* C922C 8013234C 3C02800B */  lui       $v0, %hi(gCurrentEncounter)
/* C9230 80132350 2442F950 */  addiu     $v0, $v0, %lo(gCurrentEncounter)
/* C9234 80132354 80430005 */  lb        $v1, 0x5($v0)
/* C9238 80132358 24020005 */  addiu     $v0, $zero, 0x5
/* C923C 8013235C 106200EF */  beq       $v1, $v0, .LIQUE_8013271C
/* C9240 80132360 3C020020 */   lui      $v0, (0x200000 >> 16)
/* C9244 80132364 8E630000 */  lw        $v1, 0x0($s3)
/* C9248 80132368 00621024 */  and       $v0, $v1, $v0
/* C924C 8013236C 144000EC */  bnez      $v0, .LIQUE_80132720
/* C9250 80132370 0000102D */   daddu    $v0, $zero, $zero
/* C9254 80132374 3C028016 */  lui       $v0, %hi(isPickingUpItem)
/* C9258 80132378 84428924 */  lh        $v0, %lo(isPickingUpItem)($v0)
/* C925C 8013237C 144000E8 */  bnez      $v0, .LIQUE_80132720
/* C9260 80132380 0000102D */   daddu    $v0, $zero, $zero
/* C9264 80132384 30620040 */  andi      $v0, $v1, 0x40
/* C9268 80132388 144000E5 */  bnez      $v0, .LIQUE_80132720
/* C926C 8013238C 0000102D */   daddu    $v0, $zero, $zero
/* C9270 80132390 0C009B98 */  jal       get_time_freeze_mode
/* C9274 80132394 00000000 */   nop
/* C9278 80132398 144000E1 */  bnez      $v0, .LIQUE_80132720
/* C927C 8013239C 0000102D */   daddu    $v0, $zero, $zero
/* C9280 801323A0 82820000 */  lb        $v0, 0x0($s4)
/* C9284 801323A4 10400004 */  beqz      $v0, .LIQUE_801323B8
/* C9288 801323A8 24020009 */   addiu    $v0, $zero, 0x9
/* C928C 801323AC 82830003 */  lb        $v1, 0x3($s4)
/* C9290 801323B0 106200DB */  beq       $v1, $v0, .LIQUE_80132720
/* C9294 801323B4 0000102D */   daddu    $v0, $zero, $zero
.LIQUE_801323B8:
/* C9298 801323B8 2642FFE3 */  addiu     $v0, $s2, -0x1D
/* C929C 801323BC 2C420003 */  sltiu     $v0, $v0, 0x3
/* C92A0 801323C0 10400004 */  beqz      $v0, .LIQUE_801323D4
/* C92A4 801323C4 24020157 */   addiu    $v0, $zero, 0x157
/* C92A8 801323C8 86630018 */  lh        $v1, 0x18($s3)
/* C92AC 801323CC 146200D4 */  bne       $v1, $v0, .LIQUE_80132720
/* C92B0 801323D0 0000102D */   daddu    $v0, $zero, $zero
.LIQUE_801323D4:
/* C92B4 801323D4 3C02800A */  lui       $v0, %hi(gOverrideFlags)
/* C92B8 801323D8 8C429228 */  lw        $v0, %lo(gOverrideFlags)($v0)
/* C92BC 801323DC 3C030020 */  lui       $v1, (0x200000 >> 16)
/* C92C0 801323E0 00431024 */  and       $v0, $v0, $v1
/* C92C4 801323E4 144000CE */  bnez      $v0, .LIQUE_80132720
/* C92C8 801323E8 0000102D */   daddu    $v0, $zero, $zero
/* C92CC 801323EC 962300B0 */  lhu       $v1, 0xB0($s1)
/* C92D0 801323F0 862400B2 */  lh        $a0, 0xB2($s1)
/* C92D4 801323F4 00031C00 */  sll       $v1, $v1, 16
/* C92D8 801323F8 00031403 */  sra       $v0, $v1, 16
/* C92DC 801323FC 00031FC2 */  srl       $v1, $v1, 31
/* C92E0 80132400 00431021 */  addu      $v0, $v0, $v1
/* C92E4 80132404 00021043 */  sra       $v0, $v0, 1
/* C92E8 80132408 44823000 */  mtc1      $v0, $f6
/* C92EC 8013240C 00000000 */  nop
/* C92F0 80132410 468031A0 */  cvt.s.w   $f6, $f6
/* C92F4 80132414 E7A6001C */  swc1      $f6, 0x1C($sp)
/* C92F8 80132418 C63E0028 */  lwc1      $f30, 0x28($s1)
/* C92FC 8013241C C63A002C */  lwc1      $f26, 0x2C($s1)
/* C9300 80132420 C6280030 */  lwc1      $f8, 0x30($s1)
/* C9304 80132424 0000902D */  daddu     $s2, $zero, $zero
/* C9308 80132428 04810002 */  bgez      $a0, .LIQUE_80132434
/* C930C 8013242C E7A80018 */   swc1     $f8, 0x18($sp)
/* C9310 80132430 24840003 */  addiu     $a0, $a0, 0x3
.LIQUE_80132434:
/* C9314 80132434 00041083 */  sra       $v0, $a0, 2
/* C9318 80132438 C62E00A8 */  lwc1      $f14, 0xA8($s1)
/* C931C 8013243C 3C014334 */  lui       $at, (0x43340000 >> 16)
/* C9320 80132440 44810000 */  mtc1      $at, $f0
/* C9324 80132444 44823000 */  mtc1      $v0, $f6
/* C9328 80132448 00000000 */  nop
/* C932C 8013244C 468031A0 */  cvt.s.w   $f6, $f6
/* C9330 80132450 4600703C */  c.lt.s    $f14, $f0
/* C9334 80132454 00000000 */  nop
/* C9338 80132458 45000006 */  bc1f      .LIQUE_80132474
/* C933C 8013245C E7A60020 */   swc1     $f6, 0x20($sp)
/* C9340 80132460 C600006C */  lwc1      $f0, 0x6C($s0)
/* C9344 80132464 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* C9348 80132468 44816000 */  mtc1      $at, $f12
/* C934C 8013246C 0804C922 */  j         .LIQUE_80132488
/* C9350 80132470 460C0301 */   sub.s    $f12, $f0, $f12
.LIQUE_80132474:
/* C9354 80132474 C600006C */  lwc1      $f0, 0x6C($s0)
/* C9358 80132478 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* C935C 8013247C 44816000 */  mtc1      $at, $f12
/* C9360 80132480 00000000 */  nop
/* C9364 80132484 460C0300 */  add.s     $f12, $f0, $f12
.LIQUE_80132488:
/* C9368 80132488 0C00A5FD */  jal       clamp_angle
/* C936C 8013248C 00000000 */   nop
/* C9370 80132490 46000386 */  mov.s     $f14, $f0
/* C9374 80132494 C60C006C */  lwc1      $f12, 0x6C($s0)
/* C9378 80132498 C7A80018 */  lwc1      $f8, 0x18($sp)
/* C937C 8013249C E7BE0010 */  swc1      $f30, 0x10($sp)
/* C9380 801324A0 0C00A63E */  jal       get_clamped_angle_diff
/* C9384 801324A4 E7A80014 */   swc1     $f8, 0x14($sp)
/* C9388 801324A8 44801000 */  mtc1      $zero, $f2
/* C938C 801324AC 00000000 */  nop
/* C9390 801324B0 4602003C */  c.lt.s    $f0, $f2
/* C9394 801324B4 00000000 */  nop
/* C9398 801324B8 4500000F */  bc1f      .LIQUE_801324F8
/* C939C 801324BC E7BA0024 */   swc1     $f26, 0x24($sp)
/* C93A0 801324C0 C600006C */  lwc1      $f0, 0x6C($s0)
/* C93A4 801324C4 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* C93A8 801324C8 44816000 */  mtc1      $at, $f12
/* C93AC 801324CC 0C00A5FD */  jal       clamp_angle
/* C93B0 801324D0 460C0301 */   sub.s    $f12, $f0, $f12
/* C93B4 801324D4 8E2200A4 */  lw        $v0, 0xA4($s1)
/* C93B8 801324D8 3C030100 */  lui       $v1, (0x1000000 >> 16)
/* C93BC 801324DC 00431024 */  and       $v0, $v0, $v1
/* C93C0 801324E0 10400016 */  beqz      $v0, .LIQUE_8013253C
/* C93C4 801324E4 27A40010 */   addiu    $a0, $sp, 0x10
/* C93C8 801324E8 3C0141F0 */  lui       $at, (0x41F00000 >> 16)
/* C93CC 801324EC 44816000 */  mtc1      $at, $f12
/* C93D0 801324F0 0804C94C */  j         .LIQUE_80132530
/* C93D4 801324F4 460C0300 */   add.s    $f12, $f0, $f12
.LIQUE_801324F8:
/* C93D8 801324F8 C600006C */  lwc1      $f0, 0x6C($s0)
/* C93DC 801324FC 3C0142B4 */  lui       $at, (0x42B40000 >> 16)
/* C93E0 80132500 44816000 */  mtc1      $at, $f12
/* C93E4 80132504 0C00A5FD */  jal       clamp_angle
/* C93E8 80132508 460C0300 */   add.s    $f12, $f0, $f12
/* C93EC 8013250C 8E2200A4 */  lw        $v0, 0xA4($s1)
/* C93F0 80132510 3C030100 */  lui       $v1, (0x1000000 >> 16)
/* C93F4 80132514 00431024 */  and       $v0, $v0, $v1
/* C93F8 80132518 10400008 */  beqz      $v0, .LIQUE_8013253C
/* C93FC 8013251C 27A40010 */   addiu    $a0, $sp, 0x10
/* C9400 80132520 3C0141F0 */  lui       $at, (0x41F00000 >> 16)
/* C9404 80132524 44816000 */  mtc1      $at, $f12
/* C9408 80132528 00000000 */  nop
/* C940C 8013252C 460C0301 */  sub.s     $f12, $f0, $f12
.LIQUE_80132530:
/* C9410 80132530 0C00A5FD */  jal       clamp_angle
/* C9414 80132534 00000000 */   nop
/* C9418 80132538 27A40010 */  addiu     $a0, $sp, 0x10
.LIQUE_8013253C:
/* C941C 8013253C 3C0641C0 */  lui       $a2, (0x41C00000 >> 16)
/* C9420 80132540 44070000 */  mfc1      $a3, $f0
/* C9424 80132544 0C00A71B */  jal       add_vec2D_polar
/* C9428 80132548 27A50014 */   addiu    $a1, $sp, 0x14
/* C942C 8013254C C6760008 */  lwc1      $f22, 0x8($s3)
/* C9430 80132550 C674000C */  lwc1      $f20, 0xC($s3)
/* C9434 80132554 C6780010 */  lwc1      $f24, 0x10($s3)
/* C9438 80132558 3C014158 */  lui       $at, (0x41580000 >> 16)
/* C943C 8013255C 4481E000 */  mtc1      $at, $f28
/* C9440 80132560 461EB081 */  sub.s     $f2, $f22, $f30
/* C9444 80132564 46021082 */  mul.s     $f2, $f2, $f2
/* C9448 80132568 00000000 */  nop
/* C944C 8013256C C7A60018 */  lwc1      $f6, 0x18($sp)
/* C9450 80132570 4606C001 */  sub.s     $f0, $f24, $f6
/* C9454 80132574 46000002 */  mul.s     $f0, $f0, $f0
/* C9458 80132578 00000000 */  nop
/* C945C 8013257C 46001300 */  add.s     $f12, $f2, $f0
/* C9460 80132580 46006104 */  sqrt.s    $f4, $f12
/* C9464 80132584 46042032 */  c.eq.s    $f4, $f4
/* C9468 80132588 00000000 */  nop
/* C946C 8013258C 45010004 */  bc1t      .LIQUE_801325A0
/* C9470 80132590 00000000 */   nop
/* C9474 80132594 0C0183A0 */  jal       sqrtf
/* C9478 80132598 00000000 */   nop
/* C947C 8013259C 46000106 */  mov.s     $f4, $f0
.LIQUE_801325A0:
/* C9480 801325A0 C7A80020 */  lwc1      $f8, 0x20($sp)
/* C9484 801325A4 461C4000 */  add.s     $f0, $f8, $f28
/* C9488 801325A8 4604003E */  c.le.s    $f0, $f4
/* C948C 801325AC 00000000 */  nop
/* C9490 801325B0 4501000F */  bc1t      .LIQUE_801325F0
/* C9494 801325B4 00000000 */   nop
/* C9498 801325B8 3C0141D8 */  lui       $at, (0x41D80000 >> 16)
/* C949C 801325BC 44813000 */  mtc1      $at, $f6
/* C94A0 801325C0 00000000 */  nop
/* C94A4 801325C4 4606A000 */  add.s     $f0, $f20, $f6
/* C94A8 801325C8 461A003C */  c.lt.s    $f0, $f26
/* C94AC 801325CC 00000000 */  nop
/* C94B0 801325D0 45010007 */  bc1t      .LIQUE_801325F0
/* C94B4 801325D4 00000000 */   nop
/* C94B8 801325D8 C7A8001C */  lwc1      $f8, 0x1C($sp)
/* C94BC 801325DC 4608D000 */  add.s     $f0, $f26, $f8
/* C94C0 801325E0 4614003C */  c.lt.s    $f0, $f20
/* C94C4 801325E4 00000000 */  nop
/* C94C8 801325E8 45020001 */  bc1fl     .LIQUE_801325F0
/* C94CC 801325EC 24120001 */   addiu    $s2, $zero, 0x1
.LIQUE_801325F0:
/* C94D0 801325F0 822300B4 */  lb        $v1, 0xB4($s1)
/* C94D4 801325F4 24020012 */  addiu     $v0, $zero, 0x12
/* C94D8 801325F8 1462002F */  bne       $v1, $v0, .LIQUE_801326B8
/* C94DC 801325FC 3C030100 */   lui      $v1, (0x1000000 >> 16)
/* C94E0 80132600 8E220000 */  lw        $v0, 0x0($s1)
/* C94E4 80132604 00431024 */  and       $v0, $v0, $v1
/* C94E8 80132608 1040002B */  beqz      $v0, .LIQUE_801326B8
/* C94EC 8013260C 00000000 */   nop
/* C94F0 80132610 C7A00010 */  lwc1      $f0, 0x10($sp)
/* C94F4 80132614 4600B081 */  sub.s     $f2, $f22, $f0
/* C94F8 80132618 46021082 */  mul.s     $f2, $f2, $f2
/* C94FC 8013261C 00000000 */  nop
/* C9500 80132620 C7A00014 */  lwc1      $f0, 0x14($sp)
/* C9504 80132624 4600C001 */  sub.s     $f0, $f24, $f0
/* C9508 80132628 46000002 */  mul.s     $f0, $f0, $f0
/* C950C 8013262C 00000000 */  nop
/* C9510 80132630 46001300 */  add.s     $f12, $f2, $f0
/* C9514 80132634 46006104 */  sqrt.s    $f4, $f12
/* C9518 80132638 46042032 */  c.eq.s    $f4, $f4
/* C951C 8013263C 00000000 */  nop
/* C9520 80132640 45010004 */  bc1t      .LIQUE_80132654
/* C9524 80132644 00000000 */   nop
/* C9528 80132648 0C0183A0 */  jal       sqrtf
/* C952C 8013264C 00000000 */   nop
/* C9530 80132650 46000106 */  mov.s     $f4, $f0
.LIQUE_80132654:
/* C9534 80132654 3C014160 */  lui       $at, (0x41600000 >> 16)
/* C9538 80132658 44813000 */  mtc1      $at, $f6
/* C953C 8013265C 00000000 */  nop
/* C9540 80132660 461C3000 */  add.s     $f0, $f6, $f28
/* C9544 80132664 4604003E */  c.le.s    $f0, $f4
/* C9548 80132668 00000000 */  nop
/* C954C 8013266C 45010012 */  bc1t      .LIQUE_801326B8
/* C9550 80132670 00000000 */   nop
/* C9554 80132674 3C0141D8 */  lui       $at, (0x41D80000 >> 16)
/* C9558 80132678 44814000 */  mtc1      $at, $f8
/* C955C 8013267C 00000000 */  nop
/* C9560 80132680 4608A000 */  add.s     $f0, $f20, $f8
/* C9564 80132684 C7A60024 */  lwc1      $f6, 0x24($sp)
/* C9568 80132688 4606003C */  c.lt.s    $f0, $f6
/* C956C 8013268C 00000000 */  nop
/* C9570 80132690 45010009 */  bc1t      .LIQUE_801326B8
/* C9574 80132694 00000000 */   nop
/* C9578 80132698 3C014190 */  lui       $at, (0x41900000 >> 16)
/* C957C 8013269C 44814000 */  mtc1      $at, $f8
/* C9580 801326A0 00000000 */  nop
/* C9584 801326A4 46083000 */  add.s     $f0, $f6, $f8
/* C9588 801326A8 4614003C */  c.lt.s    $f0, $f20
/* C958C 801326AC 00000000 */  nop
/* C9590 801326B0 45020001 */  bc1fl     .LIQUE_801326B8
/* C9594 801326B4 24120001 */   addiu    $s2, $zero, 0x1
.LIQUE_801326B8:
/* C9598 801326B8 12400012 */  beqz      $s2, .LIQUE_80132704
/* C959C 801326BC 00000000 */   nop
/* C95A0 801326C0 8E640000 */  lw        $a0, 0x0($s3)
/* C95A4 801326C4 30820080 */  andi      $v0, $a0, 0x80
/* C95A8 801326C8 10400015 */  beqz      $v0, .LIQUE_80132720
/* C95AC 801326CC 24020001 */   addiu    $v0, $zero, 0x1
/* C95B0 801326D0 3C058016 */  lui       $a1, %hi(D_801565A6)
/* C95B4 801326D4 24A58926 */  addiu     $a1, $a1, %lo(D_801565A6)
/* C95B8 801326D8 84A20000 */  lh        $v0, 0x0($a1)
/* C95BC 801326DC 94A30000 */  lhu       $v1, 0x0($a1)
/* C95C0 801326E0 10400004 */  beqz      $v0, .LIQUE_801326F4
/* C95C4 801326E4 2402FF7F */   addiu    $v0, $zero, -0x81
/* C95C8 801326E8 2462FFFF */  addiu     $v0, $v1, -0x1
/* C95CC 801326EC 0804C9C7 */  j         .LIQUE_8013271C
/* C95D0 801326F0 A4A20000 */   sh       $v0, 0x0($a1)
.LIQUE_801326F4:
/* C95D4 801326F4 00821024 */  and       $v0, $a0, $v0
.LIQUE_801326F8:
/* C95D8 801326F8 AE620000 */  sw        $v0, 0x0($s3)
/* C95DC 801326FC 0804C9C8 */  j         .LIQUE_80132720
/* C95E0 80132700 24020001 */   addiu    $v0, $zero, 0x1
.LIQUE_80132704:
/* C95E4 80132704 8E630000 */  lw        $v1, 0x0($s3)
/* C95E8 80132708 30620080 */  andi      $v0, $v1, 0x80
/* C95EC 8013270C 10400003 */  beqz      $v0, .LIQUE_8013271C
/* C95F0 80132710 2402FF7F */   addiu    $v0, $zero, -0x81
/* C95F4 80132714 00621024 */  and       $v0, $v1, $v0
/* C95F8 80132718 AE620000 */  sw        $v0, 0x0($s3)
.LIQUE_8013271C:
/* C95FC 8013271C 0000102D */  daddu     $v0, $zero, $zero
.LIQUE_80132720:
/* C9600 80132720 8FBF003C */  lw        $ra, 0x3C($sp)
/* C9604 80132724 8FB40038 */  lw        $s4, 0x38($sp)
/* C9608 80132728 8FB30034 */  lw        $s3, 0x34($sp)
/* C960C 8013272C 8FB20030 */  lw        $s2, 0x30($sp)
/* C9610 80132730 8FB1002C */  lw        $s1, 0x2C($sp)
/* C9614 80132734 8FB00028 */  lw        $s0, 0x28($sp)
/* C9618 80132738 D7BE0068 */  ldc1      $f30, 0x68($sp)
/* C961C 8013273C D7BC0060 */  ldc1      $f28, 0x60($sp)
/* C9620 80132740 D7BA0058 */  ldc1      $f26, 0x58($sp)
/* C9624 80132744 D7B80050 */  ldc1      $f24, 0x50($sp)
/* C9628 80132748 D7B60048 */  ldc1      $f22, 0x48($sp)
/* C962C 8013274C D7B40040 */  ldc1      $f20, 0x40($sp)
/* C9630 80132750 03E00008 */  jr        $ra
/* C9634 80132754 27BD0070 */   addiu    $sp, $sp, 0x70
