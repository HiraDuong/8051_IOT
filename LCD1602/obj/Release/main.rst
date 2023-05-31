                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _lcd_shift_display_right
                                     13 	.globl _lcd_shift_display_left
                                     14 	.globl _strlen
                                     15 	.globl _TF2
                                     16 	.globl _EXF2
                                     17 	.globl _RCLK
                                     18 	.globl _TCLK
                                     19 	.globl _EXEN2
                                     20 	.globl _TR2
                                     21 	.globl _C_T2
                                     22 	.globl _CP_RL2
                                     23 	.globl _T2CON_7
                                     24 	.globl _T2CON_6
                                     25 	.globl _T2CON_5
                                     26 	.globl _T2CON_4
                                     27 	.globl _T2CON_3
                                     28 	.globl _T2CON_2
                                     29 	.globl _T2CON_1
                                     30 	.globl _T2CON_0
                                     31 	.globl _PT2
                                     32 	.globl _ET2
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2CON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
                                    134 	.globl _LCD_GotoXY_PARM_2
                                    135 	.globl _LCD_Send_Command
                                    136 	.globl _Wait_For_LCD
                                    137 	.globl _LCD_init
                                    138 	.globl _LCD_Write_One_Char
                                    139 	.globl _LCD_Write_String
                                    140 	.globl _LCD_GotoXY
                                    141 	.globl _Delay_ms
                                    142 	.globl _Delay_us
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _LCD_GotoXY_PARM_2:
      000008                        282 	.ds 1
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable items in internal ram
                                    285 ;--------------------------------------------------------
                                    286 	.area	OSEG    (OVR,DATA)
                                    287 	.area	OSEG    (OVR,DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; Stack segment in internal ram
                                    290 ;--------------------------------------------------------
                                    291 	.area	SSEG
      000009                        292 __start__stack:
      000009                        293 	.ds	1
                                    294 
                                    295 ;--------------------------------------------------------
                                    296 ; indirectly addressable internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area ISEG    (DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area IABS    (ABS,DATA)
                                    303 	.area IABS    (ABS,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; bit data
                                    306 ;--------------------------------------------------------
                                    307 	.area BSEG    (BIT)
                                    308 ;--------------------------------------------------------
                                    309 ; paged external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area PSEG    (PAG,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XABS    (ABS,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external initialized ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XISEG   (XDATA)
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT0 (CODE)
                                    326 	.area GSINIT1 (CODE)
                                    327 	.area GSINIT2 (CODE)
                                    328 	.area GSINIT3 (CODE)
                                    329 	.area GSINIT4 (CODE)
                                    330 	.area GSINIT5 (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area CSEG    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; interrupt vector
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
      000000                        338 __interrupt_vect:
      000000 02 00 06         [24]  339 	ljmp	__sdcc_gsinit_startup
                                    340 ;--------------------------------------------------------
                                    341 ; global & static initialisations
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.globl __sdcc_gsinit_startup
                                    348 	.globl __sdcc_program_startup
                                    349 	.globl __start__stack
                                    350 	.globl __mcs51_genXINIT
                                    351 	.globl __mcs51_genXRAMCLEAR
                                    352 	.globl __mcs51_genRAMCLEAR
                                    353 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  354 	ljmp	__sdcc_program_startup
                                    355 ;--------------------------------------------------------
                                    356 ; Home
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area HOME    (CODE)
      000003                        360 __sdcc_program_startup:
      000003 02 01 79         [24]  361 	ljmp	_main
                                    362 ;	return from main will return to caller
                                    363 ;--------------------------------------------------------
                                    364 ; code
                                    365 ;--------------------------------------------------------
                                    366 	.area CSEG    (CODE)
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'LCD_Send_Command'
                                    369 ;------------------------------------------------------------
                                    370 ;x                         Allocated to registers 
                                    371 ;------------------------------------------------------------
                                    372 ;	main.c:6: void LCD_Send_Command(unsigned char x)
                                    373 ;	-----------------------------------------
                                    374 ;	 function LCD_Send_Command
                                    375 ;	-----------------------------------------
      000062                        376 _LCD_Send_Command:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      000062 85 82 80         [24]  385 	mov	_P0,dpl
                                    386 ;	main.c:9: LCD_RS=0; //Chon thanh ghi lenh
                                    387 ;	assignBit
      000065 C2 A6            [12]  388 	clr	_P2_6
                                    389 ;	main.c:10: LCD_RW=0; //De ghi du lieu
                                    390 ;	assignBit
      000067 C2 A5            [12]  391 	clr	_P2_5
                                    392 ;	main.c:11: LCD_EN=1;
                                    393 ;	assignBit
      000069 D2 A7            [12]  394 	setb	_P2_7
                                    395 ;	main.c:12: Delay_us(100);
      00006B 90 00 64         [24]  396 	mov	dptr,#0x0064
      00006E 12 01 4E         [24]  397 	lcall	_Delay_us
                                    398 ;	main.c:13: LCD_EN=0;
                                    399 ;	assignBit
      000071 C2 A7            [12]  400 	clr	_P2_7
                                    401 ;	main.c:14: Wait_For_LCD(); //Doi cho LCD san sang
      000073 12 00 79         [24]  402 	lcall	_Wait_For_LCD
                                    403 ;	main.c:15: LCD_EN=1;
                                    404 ;	assignBit
      000076 D2 A7            [12]  405 	setb	_P2_7
                                    406 ;	main.c:16: }
      000078 22               [24]  407 	ret
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    410 ;------------------------------------------------------------
                                    411 ;	main.c:18: void Wait_For_LCD()
                                    412 ;	-----------------------------------------
                                    413 ;	 function Wait_For_LCD
                                    414 ;	-----------------------------------------
      000079                        415 _Wait_For_LCD:
                                    416 ;	main.c:20: Delay_us(100);
      000079 90 00 64         [24]  417 	mov	dptr,#0x0064
                                    418 ;	main.c:21: }
      00007C 02 01 4E         [24]  419 	ljmp	_Delay_us
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'LCD_init'
                                    422 ;------------------------------------------------------------
                                    423 ;	main.c:22: void LCD_init()
                                    424 ;	-----------------------------------------
                                    425 ;	 function LCD_init
                                    426 ;	-----------------------------------------
      00007F                        427 _LCD_init:
                                    428 ;	main.c:24: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
      00007F 75 82 38         [24]  429 	mov	dpl,#0x38
      000082 12 00 62         [24]  430 	lcall	_LCD_Send_Command
                                    431 ;	main.c:25: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
      000085 75 82 0E         [24]  432 	mov	dpl,#0x0e
      000088 12 00 62         [24]  433 	lcall	_LCD_Send_Command
                                    434 ;	main.c:26: LCD_Send_Command(0x01); //Xoa man hinh
      00008B 75 82 01         [24]  435 	mov	dpl,#0x01
      00008E 12 00 62         [24]  436 	lcall	_LCD_Send_Command
                                    437 ;	main.c:27: LCD_Send_Command(0x80); //Ve dau dong
      000091 75 82 80         [24]  438 	mov	dpl,#0x80
                                    439 ;	main.c:28: }
      000094 02 00 62         [24]  440 	ljmp	_LCD_Send_Command
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'LCD_Write_One_Char'
                                    443 ;------------------------------------------------------------
                                    444 ;c                         Allocated to registers 
                                    445 ;------------------------------------------------------------
                                    446 ;	main.c:31: void LCD_Write_One_Char(unsigned char c)
                                    447 ;	-----------------------------------------
                                    448 ;	 function LCD_Write_One_Char
                                    449 ;	-----------------------------------------
      000097                        450 _LCD_Write_One_Char:
      000097 85 82 80         [24]  451 	mov	_P0,dpl
                                    452 ;	main.c:34: LCD_RS=1; //Chon thanh ghi du lieu
                                    453 ;	assignBit
      00009A D2 A6            [12]  454 	setb	_P2_6
                                    455 ;	main.c:35: LCD_RW=0;
                                    456 ;	assignBit
      00009C C2 A5            [12]  457 	clr	_P2_5
                                    458 ;	main.c:36: LCD_EN=1;
                                    459 ;	assignBit
      00009E D2 A7            [12]  460 	setb	_P2_7
                                    461 ;	main.c:37: Delay_us(10);
      0000A0 90 00 0A         [24]  462 	mov	dptr,#0x000a
      0000A3 12 01 4E         [24]  463 	lcall	_Delay_us
                                    464 ;	main.c:38: LCD_EN=0;
                                    465 ;	assignBit
      0000A6 C2 A7            [12]  466 	clr	_P2_7
                                    467 ;	main.c:39: Wait_For_LCD();
      0000A8 12 00 79         [24]  468 	lcall	_Wait_For_LCD
                                    469 ;	main.c:40: LCD_EN=1;
                                    470 ;	assignBit
      0000AB D2 A7            [12]  471 	setb	_P2_7
                                    472 ;	main.c:41: }
      0000AD 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'LCD_Write_String'
                                    476 ;------------------------------------------------------------
                                    477 ;s                         Allocated to registers r5 r6 r7 
                                    478 ;length                    Allocated to registers 
                                    479 ;------------------------------------------------------------
                                    480 ;	main.c:43: void LCD_Write_String(unsigned char *s)
                                    481 ;	-----------------------------------------
                                    482 ;	 function LCD_Write_String
                                    483 ;	-----------------------------------------
      0000AE                        484 _LCD_Write_String:
                                    485 ;	main.c:46: length=strlen(s); //Lay do dai xau
      0000AE AD 82            [24]  486 	mov	r5,dpl
      0000B0 AE 83            [24]  487 	mov	r6,dph
      0000B2 AF F0            [24]  488 	mov	r7,b
      0000B4 C0 07            [24]  489 	push	ar7
      0000B6 C0 06            [24]  490 	push	ar6
      0000B8 C0 05            [24]  491 	push	ar5
      0000BA 12 01 EC         [24]  492 	lcall	_strlen
      0000BD AB 82            [24]  493 	mov	r3,dpl
      0000BF AC 83            [24]  494 	mov	r4,dph
      0000C1 D0 05            [24]  495 	pop	ar5
      0000C3 D0 06            [24]  496 	pop	ar6
      0000C5 D0 07            [24]  497 	pop	ar7
                                    498 ;	main.c:47: while(length!=0)
      0000C7                        499 00101$:
      0000C7 EB               [12]  500 	mov	a,r3
      0000C8 60 27            [24]  501 	jz	00104$
                                    502 ;	main.c:49: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
      0000CA 8D 82            [24]  503 	mov	dpl,r5
      0000CC 8E 83            [24]  504 	mov	dph,r6
      0000CE 8F F0            [24]  505 	mov	b,r7
      0000D0 12 02 04         [24]  506 	lcall	__gptrget
      0000D3 FC               [12]  507 	mov	r4,a
      0000D4 A3               [24]  508 	inc	dptr
      0000D5 AD 82            [24]  509 	mov	r5,dpl
      0000D7 AE 83            [24]  510 	mov	r6,dph
      0000D9 8C 82            [24]  511 	mov	dpl,r4
      0000DB C0 07            [24]  512 	push	ar7
      0000DD C0 06            [24]  513 	push	ar6
      0000DF C0 05            [24]  514 	push	ar5
      0000E1 C0 03            [24]  515 	push	ar3
      0000E3 12 00 97         [24]  516 	lcall	_LCD_Write_One_Char
      0000E6 D0 03            [24]  517 	pop	ar3
      0000E8 D0 05            [24]  518 	pop	ar5
      0000EA D0 06            [24]  519 	pop	ar6
      0000EC D0 07            [24]  520 	pop	ar7
                                    521 ;	main.c:50: s++; //Tang con tro
                                    522 ;	main.c:51: length--;
      0000EE 1B               [12]  523 	dec	r3
      0000EF 80 D6            [24]  524 	sjmp	00101$
      0000F1                        525 00104$:
                                    526 ;	main.c:53: }
      0000F1 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'LCD_GotoXY'
                                    530 ;------------------------------------------------------------
                                    531 ;col                       Allocated with name '_LCD_GotoXY_PARM_2'
                                    532 ;row                       Allocated to registers r7 
                                    533 ;i                         Allocated to registers r7 
                                    534 ;------------------------------------------------------------
                                    535 ;	main.c:55: void LCD_GotoXY(char row, char col)
                                    536 ;	-----------------------------------------
                                    537 ;	 function LCD_GotoXY
                                    538 ;	-----------------------------------------
      0000F2                        539 _LCD_GotoXY:
      0000F2 AF 82            [24]  540 	mov	r7,dpl
                                    541 ;	main.c:58: if (row == 2)
      0000F4 BF 02 08         [24]  542 	cjne	r7,#0x02,00102$
                                    543 ;	main.c:59: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
      0000F7 75 82 C0         [24]  544 	mov	dpl,#0xc0
      0000FA 12 00 62         [24]  545 	lcall	_LCD_Send_Command
      0000FD 80 06            [24]  546 	sjmp	00112$
      0000FF                        547 00102$:
                                    548 ;	main.c:61: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
      0000FF 75 82 80         [24]  549 	mov	dpl,#0x80
      000102 12 00 62         [24]  550 	lcall	_LCD_Send_Command
                                    551 ;	main.c:62: for (i = 0; i < col; i++)
      000105                        552 00112$:
      000105 7F 00            [12]  553 	mov	r7,#0x00
      000107                        554 00106$:
      000107 C3               [12]  555 	clr	c
      000108 EF               [12]  556 	mov	a,r7
      000109 95 08            [12]  557 	subb	a,_LCD_GotoXY_PARM_2
      00010B 50 0D            [24]  558 	jnc	00108$
                                    559 ;	main.c:63: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
      00010D 75 82 14         [24]  560 	mov	dpl,#0x14
      000110 C0 07            [24]  561 	push	ar7
      000112 12 00 62         [24]  562 	lcall	_LCD_Send_Command
      000115 D0 07            [24]  563 	pop	ar7
                                    564 ;	main.c:62: for (i = 0; i < col; i++)
      000117 0F               [12]  565 	inc	r7
      000118 80 ED            [24]  566 	sjmp	00106$
      00011A                        567 00108$:
                                    568 ;	main.c:64: }
      00011A 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'Delay_ms'
                                    572 ;------------------------------------------------------------
                                    573 ;interval                  Allocated to registers r6 r7 
                                    574 ;i                         Allocated to registers r4 r5 
                                    575 ;j                         Allocated to registers r2 r3 
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:66: void Delay_ms(int interval)
                                    578 ;	-----------------------------------------
                                    579 ;	 function Delay_ms
                                    580 ;	-----------------------------------------
      00011B                        581 _Delay_ms:
      00011B AE 82            [24]  582 	mov	r6,dpl
      00011D AF 83            [24]  583 	mov	r7,dph
                                    584 ;	main.c:69: for(i=0;i<1000;i++)
      00011F 7C 00            [12]  585 	mov	r4,#0x00
      000121 7D 00            [12]  586 	mov	r5,#0x00
                                    587 ;	main.c:71: for(j=0;j<interval;j++);
      000123                        588 00111$:
      000123 7A 00            [12]  589 	mov	r2,#0x00
      000125 7B 00            [12]  590 	mov	r3,#0x00
      000127                        591 00104$:
      000127 C3               [12]  592 	clr	c
      000128 EA               [12]  593 	mov	a,r2
      000129 9E               [12]  594 	subb	a,r6
      00012A EB               [12]  595 	mov	a,r3
      00012B 64 80            [12]  596 	xrl	a,#0x80
      00012D 8F F0            [24]  597 	mov	b,r7
      00012F 63 F0 80         [24]  598 	xrl	b,#0x80
      000132 95 F0            [12]  599 	subb	a,b
      000134 50 07            [24]  600 	jnc	00107$
      000136 0A               [12]  601 	inc	r2
      000137 BA 00 ED         [24]  602 	cjne	r2,#0x00,00104$
      00013A 0B               [12]  603 	inc	r3
      00013B 80 EA            [24]  604 	sjmp	00104$
      00013D                        605 00107$:
                                    606 ;	main.c:69: for(i=0;i<1000;i++)
      00013D 0C               [12]  607 	inc	r4
      00013E BC 00 01         [24]  608 	cjne	r4,#0x00,00126$
      000141 0D               [12]  609 	inc	r5
      000142                        610 00126$:
      000142 C3               [12]  611 	clr	c
      000143 EC               [12]  612 	mov	a,r4
      000144 94 E8            [12]  613 	subb	a,#0xe8
      000146 ED               [12]  614 	mov	a,r5
      000147 64 80            [12]  615 	xrl	a,#0x80
      000149 94 83            [12]  616 	subb	a,#0x83
      00014B 40 D6            [24]  617 	jc	00111$
                                    618 ;	main.c:73: }
      00014D 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'Delay_us'
                                    622 ;------------------------------------------------------------
                                    623 ;interval                  Allocated to registers r6 r7 
                                    624 ;j                         Allocated to registers r4 r5 
                                    625 ;------------------------------------------------------------
                                    626 ;	main.c:75: void Delay_us(int interval)
                                    627 ;	-----------------------------------------
                                    628 ;	 function Delay_us
                                    629 ;	-----------------------------------------
      00014E                        630 _Delay_us:
      00014E AE 82            [24]  631 	mov	r6,dpl
      000150 AF 83            [24]  632 	mov	r7,dph
                                    633 ;	main.c:78: for(j=0;j<interval;j++);
      000152 7C 00            [12]  634 	mov	r4,#0x00
      000154 7D 00            [12]  635 	mov	r5,#0x00
      000156                        636 00103$:
      000156 C3               [12]  637 	clr	c
      000157 EC               [12]  638 	mov	a,r4
      000158 9E               [12]  639 	subb	a,r6
      000159 ED               [12]  640 	mov	a,r5
      00015A 64 80            [12]  641 	xrl	a,#0x80
      00015C 8F F0            [24]  642 	mov	b,r7
      00015E 63 F0 80         [24]  643 	xrl	b,#0x80
      000161 95 F0            [12]  644 	subb	a,b
      000163 50 07            [24]  645 	jnc	00105$
      000165 0C               [12]  646 	inc	r4
      000166 BC 00 ED         [24]  647 	cjne	r4,#0x00,00103$
      000169 0D               [12]  648 	inc	r5
      00016A 80 EA            [24]  649 	sjmp	00103$
      00016C                        650 00105$:
                                    651 ;	main.c:79: }
      00016C 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'lcd_shift_display_left'
                                    655 ;------------------------------------------------------------
                                    656 ;	main.c:82: void lcd_shift_display_left() {
                                    657 ;	-----------------------------------------
                                    658 ;	 function lcd_shift_display_left
                                    659 ;	-----------------------------------------
      00016D                        660 _lcd_shift_display_left:
                                    661 ;	main.c:83: LCD_Send_Command(0x18);
      00016D 75 82 18         [24]  662 	mov	dpl,#0x18
                                    663 ;	main.c:84: }
      000170 02 00 62         [24]  664 	ljmp	_LCD_Send_Command
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'lcd_shift_display_right'
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:87: void lcd_shift_display_right() {
                                    669 ;	-----------------------------------------
                                    670 ;	 function lcd_shift_display_right
                                    671 ;	-----------------------------------------
      000173                        672 _lcd_shift_display_right:
                                    673 ;	main.c:88: LCD_Send_Command(0x1c);
      000173 75 82 1C         [24]  674 	mov	dpl,#0x1c
                                    675 ;	main.c:89: }
      000176 02 00 62         [24]  676 	ljmp	_LCD_Send_Command
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'main'
                                    679 ;------------------------------------------------------------
                                    680 ;i                         Allocated to registers r6 r7 
                                    681 ;------------------------------------------------------------
                                    682 ;	main.c:91: void main()
                                    683 ;	-----------------------------------------
                                    684 ;	 function main
                                    685 ;	-----------------------------------------
      000179                        686 _main:
                                    687 ;	main.c:94: LCD_init();
      000179 12 00 7F         [24]  688 	lcall	_LCD_init
                                    689 ;	main.c:95: LCD_Write_String("Hello Elitech 65");
      00017C 90 02 24         [24]  690 	mov	dptr,#___str_0
      00017F 75 F0 80         [24]  691 	mov	b,#0x80
      000182 12 00 AE         [24]  692 	lcall	_LCD_Write_String
                                    693 ;	main.c:96: LCD_Send_Command(0xC0); //Chuyen con tro xuong dong thu 2
      000185 75 82 C0         [24]  694 	mov	dpl,#0xc0
      000188 12 00 62         [24]  695 	lcall	_LCD_Send_Command
                                    696 ;	main.c:97: LCD_Write_String("****************");
      00018B 90 02 35         [24]  697 	mov	dptr,#___str_1
      00018E 75 F0 80         [24]  698 	mov	b,#0x80
      000191 12 00 AE         [24]  699 	lcall	_LCD_Write_String
                                    700 ;	main.c:98: LCD_Send_Command(0xE); //Chuyen con tro xuong dong thu 2
      000194 75 82 0E         [24]  701 	mov	dpl,#0x0e
      000197 12 00 62         [24]  702 	lcall	_LCD_Send_Command
                                    703 ;	main.c:101: Delay_ms(30);
      00019A 90 00 1E         [24]  704 	mov	dptr,#0x001e
      00019D 12 01 1B         [24]  705 	lcall	_Delay_ms
                                    706 ;	main.c:106: for( i = 0;i<16;i++){
      0001A0                        707 00112$:
      0001A0 7E 00            [12]  708 	mov	r6,#0x00
      0001A2 7F 00            [12]  709 	mov	r7,#0x00
      0001A4                        710 00106$:
                                    711 ;	main.c:107: lcd_shift_display_left();
      0001A4 C0 07            [24]  712 	push	ar7
      0001A6 C0 06            [24]  713 	push	ar6
      0001A8 12 01 6D         [24]  714 	lcall	_lcd_shift_display_left
                                    715 ;	main.c:108: Delay_ms(50);
      0001AB 90 00 32         [24]  716 	mov	dptr,#0x0032
      0001AE 12 01 1B         [24]  717 	lcall	_Delay_ms
      0001B1 D0 06            [24]  718 	pop	ar6
      0001B3 D0 07            [24]  719 	pop	ar7
                                    720 ;	main.c:106: for( i = 0;i<16;i++){
      0001B5 0E               [12]  721 	inc	r6
      0001B6 BE 00 01         [24]  722 	cjne	r6,#0x00,00134$
      0001B9 0F               [12]  723 	inc	r7
      0001BA                        724 00134$:
      0001BA C3               [12]  725 	clr	c
      0001BB EE               [12]  726 	mov	a,r6
      0001BC 94 10            [12]  727 	subb	a,#0x10
      0001BE EF               [12]  728 	mov	a,r7
      0001BF 64 80            [12]  729 	xrl	a,#0x80
      0001C1 94 80            [12]  730 	subb	a,#0x80
      0001C3 40 DF            [24]  731 	jc	00106$
                                    732 ;	main.c:111: for( i = 0;i<16;i++){
      0001C5 7E 00            [12]  733 	mov	r6,#0x00
      0001C7 7F 00            [12]  734 	mov	r7,#0x00
      0001C9                        735 00108$:
                                    736 ;	main.c:112: lcd_shift_display_right();
      0001C9 C0 07            [24]  737 	push	ar7
      0001CB C0 06            [24]  738 	push	ar6
      0001CD 12 01 73         [24]  739 	lcall	_lcd_shift_display_right
                                    740 ;	main.c:113: Delay_ms(50);
      0001D0 90 00 32         [24]  741 	mov	dptr,#0x0032
      0001D3 12 01 1B         [24]  742 	lcall	_Delay_ms
      0001D6 D0 06            [24]  743 	pop	ar6
      0001D8 D0 07            [24]  744 	pop	ar7
                                    745 ;	main.c:111: for( i = 0;i<16;i++){
      0001DA 0E               [12]  746 	inc	r6
      0001DB BE 00 01         [24]  747 	cjne	r6,#0x00,00136$
      0001DE 0F               [12]  748 	inc	r7
      0001DF                        749 00136$:
      0001DF C3               [12]  750 	clr	c
      0001E0 EE               [12]  751 	mov	a,r6
      0001E1 94 10            [12]  752 	subb	a,#0x10
      0001E3 EF               [12]  753 	mov	a,r7
      0001E4 64 80            [12]  754 	xrl	a,#0x80
      0001E6 94 80            [12]  755 	subb	a,#0x80
      0001E8 40 DF            [24]  756 	jc	00108$
                                    757 ;	main.c:116: }
      0001EA 80 B4            [24]  758 	sjmp	00112$
                                    759 	.area CSEG    (CODE)
                                    760 	.area CONST   (CODE)
                                    761 	.area CONST   (CODE)
      000224                        762 ___str_0:
      000224 48 65 6C 6C 6F 20 45   763 	.ascii "Hello Elitech 65"
             6C 69 74 65 63 68 20
             36 35
      000234 00                     764 	.db 0x00
                                    765 	.area CSEG    (CODE)
                                    766 	.area CONST   (CODE)
      000235                        767 ___str_1:
      000235 2A 2A 2A 2A 2A 2A 2A   768 	.ascii "****************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A
      000245 00                     769 	.db 0x00
                                    770 	.area CSEG    (CODE)
                                    771 	.area XINIT   (CODE)
                                    772 	.area CABS    (ABS,CODE)
