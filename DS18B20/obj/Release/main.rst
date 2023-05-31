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
                                     11 	.globl _TIMER0_ISR
                                     12 	.globl _main
                                     13 	.globl _display
                                     14 	.globl _Timer_Init
                                     15 	.globl _Delay_ms
                                     16 	.globl _LCD_GotoXY
                                     17 	.globl _LCD_Write_String
                                     18 	.globl _LCD_Write_One_Char
                                     19 	.globl _LCD_init
                                     20 	.globl _ReadTemperature
                                     21 	.globl _Init_DS18B20
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _display_PARM_3
                                    119 	.globl _display_PARM_2
                                    120 	.globl _motor_power
                                    121 	.globl _count
                                    122 	.globl _result
                                    123 	.globl _c
                                    124 	.globl _b
                                    125 	.globl _a
                                    126 	.globl _temp
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           000090   143 _P1	=	0x0090
                           000098   144 _SCON	=	0x0098
                           000099   145 _SBUF	=	0x0099
                           0000A0   146 _P2	=	0x00a0
                           0000A8   147 _IE	=	0x00a8
                           0000B0   148 _P3	=	0x00b0
                           0000B8   149 _IP	=	0x00b8
                           0000D0   150 _PSW	=	0x00d0
                           0000E0   151 _ACC	=	0x00e0
                           0000F0   152 _B	=	0x00f0
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0_0	=	0x0080
                           000081   159 _P0_1	=	0x0081
                           000082   160 _P0_2	=	0x0082
                           000083   161 _P0_3	=	0x0083
                           000084   162 _P0_4	=	0x0084
                           000085   163 _P0_5	=	0x0085
                           000086   164 _P0_6	=	0x0086
                           000087   165 _P0_7	=	0x0087
                           000088   166 _IT0	=	0x0088
                           000089   167 _IE0	=	0x0089
                           00008A   168 _IT1	=	0x008a
                           00008B   169 _IE1	=	0x008b
                           00008C   170 _TR0	=	0x008c
                           00008D   171 _TF0	=	0x008d
                           00008E   172 _TR1	=	0x008e
                           00008F   173 _TF1	=	0x008f
                           000090   174 _P1_0	=	0x0090
                           000091   175 _P1_1	=	0x0091
                           000092   176 _P1_2	=	0x0092
                           000093   177 _P1_3	=	0x0093
                           000094   178 _P1_4	=	0x0094
                           000095   179 _P1_5	=	0x0095
                           000096   180 _P1_6	=	0x0096
                           000097   181 _P1_7	=	0x0097
                           000098   182 _RI	=	0x0098
                           000099   183 _TI	=	0x0099
                           00009A   184 _RB8	=	0x009a
                           00009B   185 _TB8	=	0x009b
                           00009C   186 _REN	=	0x009c
                           00009D   187 _SM2	=	0x009d
                           00009E   188 _SM1	=	0x009e
                           00009F   189 _SM0	=	0x009f
                           0000A0   190 _P2_0	=	0x00a0
                           0000A1   191 _P2_1	=	0x00a1
                           0000A2   192 _P2_2	=	0x00a2
                           0000A3   193 _P2_3	=	0x00a3
                           0000A4   194 _P2_4	=	0x00a4
                           0000A5   195 _P2_5	=	0x00a5
                           0000A6   196 _P2_6	=	0x00a6
                           0000A7   197 _P2_7	=	0x00a7
                           0000A8   198 _EX0	=	0x00a8
                           0000A9   199 _ET0	=	0x00a9
                           0000AA   200 _EX1	=	0x00aa
                           0000AB   201 _ET1	=	0x00ab
                           0000AC   202 _ES	=	0x00ac
                           0000AF   203 _EA	=	0x00af
                           0000B0   204 _P3_0	=	0x00b0
                           0000B1   205 _P3_1	=	0x00b1
                           0000B2   206 _P3_2	=	0x00b2
                           0000B3   207 _P3_3	=	0x00b3
                           0000B4   208 _P3_4	=	0x00b4
                           0000B5   209 _P3_5	=	0x00b5
                           0000B6   210 _P3_6	=	0x00b6
                           0000B7   211 _P3_7	=	0x00b7
                           0000B0   212 _RXD	=	0x00b0
                           0000B1   213 _TXD	=	0x00b1
                           0000B2   214 _INT0	=	0x00b2
                           0000B3   215 _INT1	=	0x00b3
                           0000B4   216 _T0	=	0x00b4
                           0000B5   217 _T1	=	0x00b5
                           0000B6   218 _WR	=	0x00b6
                           0000B7   219 _RD	=	0x00b7
                           0000B8   220 _PX0	=	0x00b8
                           0000B9   221 _PT0	=	0x00b9
                           0000BA   222 _PX1	=	0x00ba
                           0000BB   223 _PT1	=	0x00bb
                           0000BC   224 _PS	=	0x00bc
                           0000D0   225 _P	=	0x00d0
                           0000D1   226 _F1	=	0x00d1
                           0000D2   227 _OV	=	0x00d2
                           0000D3   228 _RS0	=	0x00d3
                           0000D4   229 _RS1	=	0x00d4
                           0000D5   230 _F0	=	0x00d5
                           0000D6   231 _AC	=	0x00d6
                           0000D7   232 _CY	=	0x00d7
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable register banks
                                    235 ;--------------------------------------------------------
                                    236 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area DSEG    (DATA)
      000009                        242 _temp::
      000009                        243 	.ds 1
      00000A                        244 _a::
      00000A                        245 	.ds 2
      00000C                        246 _b::
      00000C                        247 	.ds 2
      00000E                        248 _c::
      00000E                        249 	.ds 2
      000010                        250 _result::
      000010                        251 	.ds 10
      00001A                        252 _count::
      00001A                        253 	.ds 1
      00001B                        254 _motor_power::
      00001B                        255 	.ds 2
      00001D                        256 _display_PARM_2:
      00001D                        257 	.ds 1
      00001E                        258 _display_PARM_3:
      00001E                        259 	.ds 1
                                    260 ;--------------------------------------------------------
                                    261 ; overlayable items in internal ram
                                    262 ;--------------------------------------------------------
                                    263 ;--------------------------------------------------------
                                    264 ; Stack segment in internal ram
                                    265 ;--------------------------------------------------------
                                    266 	.area	SSEG
      000021                        267 __start__stack:
      000021                        268 	.ds	1
                                    269 
                                    270 ;--------------------------------------------------------
                                    271 ; indirectly addressable internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area ISEG    (DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area IABS    (ABS,DATA)
                                    278 	.area IABS    (ABS,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; bit data
                                    281 ;--------------------------------------------------------
                                    282 	.area BSEG    (BIT)
                                    283 ;--------------------------------------------------------
                                    284 ; paged external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area PSEG    (PAG,XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XSEG    (XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XABS    (ABS,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; external initialized ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XISEG   (XDATA)
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT0 (CODE)
                                    301 	.area GSINIT1 (CODE)
                                    302 	.area GSINIT2 (CODE)
                                    303 	.area GSINIT3 (CODE)
                                    304 	.area GSINIT4 (CODE)
                                    305 	.area GSINIT5 (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area CSEG    (CODE)
                                    309 ;--------------------------------------------------------
                                    310 ; interrupt vector
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
      000000                        313 __interrupt_vect:
      000000 02 00 11         [24]  314 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  315 	reti
      000004                        316 	.ds	7
      00000B 02 03 EF         [24]  317 	ljmp	_TIMER0_ISR
                                    318 ;--------------------------------------------------------
                                    319 ; global & static initialisations
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.globl __sdcc_gsinit_startup
                                    326 	.globl __sdcc_program_startup
                                    327 	.globl __start__stack
                                    328 	.globl __mcs51_genXINIT
                                    329 	.globl __mcs51_genXRAMCLEAR
                                    330 	.globl __mcs51_genRAMCLEAR
                                    331 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  332 	ljmp	__sdcc_program_startup
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
      00000E                        338 __sdcc_program_startup:
      00000E 02 03 84         [24]  339 	ljmp	_main
                                    340 ;	return from main will return to caller
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'Timer_Init'
                                    347 ;------------------------------------------------------------
                                    348 ;	main.c:23: void Timer_Init()
                                    349 ;	-----------------------------------------
                                    350 ;	 function Timer_Init
                                    351 ;	-----------------------------------------
      00026F                        352 _Timer_Init:
                           000007   353 	ar7 = 0x07
                           000006   354 	ar6 = 0x06
                           000005   355 	ar5 = 0x05
                           000004   356 	ar4 = 0x04
                           000003   357 	ar3 = 0x03
                           000002   358 	ar2 = 0x02
                           000001   359 	ar1 = 0x01
                           000000   360 	ar0 = 0x00
                                    361 ;	main.c:25: TMOD = 0x01;    //timer 0 mode 1
      00026F 75 89 01         [24]  362 	mov	_TMOD,#0x01
                                    363 ;	main.c:26: TH0 = TH0_5ms;
      000272 75 8C EE         [24]  364 	mov	_TH0,#0xee
                                    365 ;	main.c:27: TL0 = TL0_5ms;
      000275 75 8A 00         [24]  366 	mov	_TL0,#0x00
                                    367 ;	main.c:31: IE  = 0b10000010;
      000278 75 A8 82         [24]  368 	mov	_IE,#0x82
                                    369 ;	main.c:32: TF0 = 0;
                                    370 ;	assignBit
      00027B C2 8D            [12]  371 	clr	_TF0
                                    372 ;	main.c:33: TR0 = 1;    //start timer
                                    373 ;	assignBit
      00027D D2 8C            [12]  374 	setb	_TR0
                                    375 ;	main.c:34: count = 0;
                                    376 ;	main.c:35: motor_power = 0;
      00027F E4               [12]  377 	clr	a
      000280 F5 1A            [12]  378 	mov	_count,a
      000282 F5 1B            [12]  379 	mov	_motor_power,a
      000284 F5 1C            [12]  380 	mov	(_motor_power + 1),a
                                    381 ;	main.c:36: }
      000286 22               [24]  382 	ret
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'display'
                                    385 ;------------------------------------------------------------
                                    386 ;max                       Allocated with name '_display_PARM_2'
                                    387 ;min                       Allocated with name '_display_PARM_3'
                                    388 ;cur                       Allocated to registers r7 
                                    389 ;------------------------------------------------------------
                                    390 ;	main.c:40: void display(unsigned char cur, unsigned char max, unsigned char min)
                                    391 ;	-----------------------------------------
                                    392 ;	 function display
                                    393 ;	-----------------------------------------
      000287                        394 _display:
      000287 AF 82            [24]  395 	mov	r7,dpl
                                    396 ;	main.c:42: LCD_GotoXY(1,0);
      000289 75 08 00         [24]  397 	mov	_LCD_GotoXY_PARM_2,#0x00
      00028C 75 82 01         [24]  398 	mov	dpl,#0x01
      00028F C0 07            [24]  399 	push	ar7
      000291 12 01 F4         [24]  400 	lcall	_LCD_GotoXY
                                    401 ;	main.c:43: LCD_Write_String("Current: ");
      000294 90 05 42         [24]  402 	mov	dptr,#___str_0
      000297 75 F0 80         [24]  403 	mov	b,#0x80
      00029A 12 01 B0         [24]  404 	lcall	_LCD_Write_String
      00029D D0 07            [24]  405 	pop	ar7
                                    406 ;	main.c:44: LCD_Write_One_Char(cur/10+0x30);
      00029F 7E 00            [12]  407 	mov	r6,#0x00
      0002A1 75 1F 0A         [24]  408 	mov	__divsint_PARM_2,#0x0a
                                    409 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0002A4 8E 20            [24]  410 	mov	(__divsint_PARM_2 + 1),r6
      0002A6 8F 82            [24]  411 	mov	dpl,r7
      0002A8 8E 83            [24]  412 	mov	dph,r6
      0002AA C0 07            [24]  413 	push	ar7
      0002AC C0 06            [24]  414 	push	ar6
      0002AE 12 05 06         [24]  415 	lcall	__divsint
      0002B1 AC 82            [24]  416 	mov	r4,dpl
      0002B3 74 30            [12]  417 	mov	a,#0x30
      0002B5 2C               [12]  418 	add	a,r4
      0002B6 F5 82            [12]  419 	mov	dpl,a
      0002B8 12 01 99         [24]  420 	lcall	_LCD_Write_One_Char
      0002BB D0 06            [24]  421 	pop	ar6
      0002BD D0 07            [24]  422 	pop	ar7
                                    423 ;	main.c:45: LCD_Write_One_Char(cur%10+0x30);
      0002BF 75 1F 0A         [24]  424 	mov	__modsint_PARM_2,#0x0a
      0002C2 75 20 00         [24]  425 	mov	(__modsint_PARM_2 + 1),#0x00
      0002C5 8F 82            [24]  426 	mov	dpl,r7
      0002C7 8E 83            [24]  427 	mov	dph,r6
      0002C9 12 04 D0         [24]  428 	lcall	__modsint
      0002CC AE 82            [24]  429 	mov	r6,dpl
      0002CE 74 30            [12]  430 	mov	a,#0x30
      0002D0 2E               [12]  431 	add	a,r6
      0002D1 F5 82            [12]  432 	mov	dpl,a
      0002D3 12 01 99         [24]  433 	lcall	_LCD_Write_One_Char
                                    434 ;	main.c:46: LCD_Write_One_Char(223);            //degree character on LCD
      0002D6 75 82 DF         [24]  435 	mov	dpl,#0xdf
      0002D9 12 01 99         [24]  436 	lcall	_LCD_Write_One_Char
                                    437 ;	main.c:47: LCD_Write_One_Char('C');
      0002DC 75 82 43         [24]  438 	mov	dpl,#0x43
      0002DF 12 01 99         [24]  439 	lcall	_LCD_Write_One_Char
                                    440 ;	main.c:51: LCD_GotoXY(2,0);
      0002E2 75 08 00         [24]  441 	mov	_LCD_GotoXY_PARM_2,#0x00
      0002E5 75 82 02         [24]  442 	mov	dpl,#0x02
      0002E8 12 01 F4         [24]  443 	lcall	_LCD_GotoXY
                                    444 ;	main.c:52: LCD_Write_String("Max:");
      0002EB 90 05 4C         [24]  445 	mov	dptr,#___str_1
      0002EE 75 F0 80         [24]  446 	mov	b,#0x80
      0002F1 12 01 B0         [24]  447 	lcall	_LCD_Write_String
                                    448 ;	main.c:53: LCD_Write_One_Char(max/10+0x30);
      0002F4 AE 1D            [24]  449 	mov	r6,_display_PARM_2
      0002F6 7F 00            [12]  450 	mov	r7,#0x00
      0002F8 75 1F 0A         [24]  451 	mov	__divsint_PARM_2,#0x0a
                                    452 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0002FB 8F 20            [24]  453 	mov	(__divsint_PARM_2 + 1),r7
      0002FD 8E 82            [24]  454 	mov	dpl,r6
      0002FF 8F 83            [24]  455 	mov	dph,r7
      000301 C0 07            [24]  456 	push	ar7
      000303 C0 06            [24]  457 	push	ar6
      000305 12 05 06         [24]  458 	lcall	__divsint
      000308 AC 82            [24]  459 	mov	r4,dpl
      00030A 74 30            [12]  460 	mov	a,#0x30
      00030C 2C               [12]  461 	add	a,r4
      00030D F5 82            [12]  462 	mov	dpl,a
      00030F 12 01 99         [24]  463 	lcall	_LCD_Write_One_Char
      000312 D0 06            [24]  464 	pop	ar6
      000314 D0 07            [24]  465 	pop	ar7
                                    466 ;	main.c:54: LCD_Write_One_Char(max%10+0x30);
      000316 75 1F 0A         [24]  467 	mov	__modsint_PARM_2,#0x0a
      000319 75 20 00         [24]  468 	mov	(__modsint_PARM_2 + 1),#0x00
      00031C 8E 82            [24]  469 	mov	dpl,r6
      00031E 8F 83            [24]  470 	mov	dph,r7
      000320 12 04 D0         [24]  471 	lcall	__modsint
      000323 AE 82            [24]  472 	mov	r6,dpl
      000325 74 30            [12]  473 	mov	a,#0x30
      000327 2E               [12]  474 	add	a,r6
      000328 F5 82            [12]  475 	mov	dpl,a
      00032A 12 01 99         [24]  476 	lcall	_LCD_Write_One_Char
                                    477 ;	main.c:55: LCD_Write_One_Char(223);            //degree character on LCD
      00032D 75 82 DF         [24]  478 	mov	dpl,#0xdf
      000330 12 01 99         [24]  479 	lcall	_LCD_Write_One_Char
                                    480 ;	main.c:56: LCD_Write_String("C Min:");
      000333 90 05 51         [24]  481 	mov	dptr,#___str_2
      000336 75 F0 80         [24]  482 	mov	b,#0x80
      000339 12 01 B0         [24]  483 	lcall	_LCD_Write_String
                                    484 ;	main.c:57: LCD_Write_One_Char(min/10+0x30);
      00033C AE 1E            [24]  485 	mov	r6,_display_PARM_3
      00033E 7F 00            [12]  486 	mov	r7,#0x00
      000340 75 1F 0A         [24]  487 	mov	__divsint_PARM_2,#0x0a
                                    488 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000343 8F 20            [24]  489 	mov	(__divsint_PARM_2 + 1),r7
      000345 8E 82            [24]  490 	mov	dpl,r6
      000347 8F 83            [24]  491 	mov	dph,r7
      000349 C0 07            [24]  492 	push	ar7
      00034B C0 06            [24]  493 	push	ar6
      00034D 12 05 06         [24]  494 	lcall	__divsint
      000350 AC 82            [24]  495 	mov	r4,dpl
      000352 74 30            [12]  496 	mov	a,#0x30
      000354 2C               [12]  497 	add	a,r4
      000355 F5 82            [12]  498 	mov	dpl,a
      000357 12 01 99         [24]  499 	lcall	_LCD_Write_One_Char
      00035A D0 06            [24]  500 	pop	ar6
      00035C D0 07            [24]  501 	pop	ar7
                                    502 ;	main.c:58: LCD_Write_One_Char(min%10+0x30);
      00035E 75 1F 0A         [24]  503 	mov	__modsint_PARM_2,#0x0a
      000361 75 20 00         [24]  504 	mov	(__modsint_PARM_2 + 1),#0x00
      000364 8E 82            [24]  505 	mov	dpl,r6
      000366 8F 83            [24]  506 	mov	dph,r7
      000368 12 04 D0         [24]  507 	lcall	__modsint
      00036B AE 82            [24]  508 	mov	r6,dpl
      00036D 74 30            [12]  509 	mov	a,#0x30
      00036F 2E               [12]  510 	add	a,r6
      000370 F5 82            [12]  511 	mov	dpl,a
      000372 12 01 99         [24]  512 	lcall	_LCD_Write_One_Char
                                    513 ;	main.c:59: LCD_Write_One_Char(223);            //degree character on LCD
      000375 75 82 DF         [24]  514 	mov	dpl,#0xdf
      000378 12 01 99         [24]  515 	lcall	_LCD_Write_One_Char
                                    516 ;	main.c:60: LCD_Write_String("C");
      00037B 90 05 58         [24]  517 	mov	dptr,#___str_3
      00037E 75 F0 80         [24]  518 	mov	b,#0x80
                                    519 ;	main.c:61: }
      000381 02 01 B0         [24]  520 	ljmp	_LCD_Write_String
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'main'
                                    523 ;------------------------------------------------------------
                                    524 ;max_temp                  Allocated to registers r7 
                                    525 ;min_temp                  Allocated to registers r6 
                                    526 ;------------------------------------------------------------
                                    527 ;	main.c:63: void main(void)
                                    528 ;	-----------------------------------------
                                    529 ;	 function main
                                    530 ;	-----------------------------------------
      000384                        531 _main:
                                    532 ;	main.c:67: Init_DS18B20();
      000384 12 00 9A         [24]  533 	lcall	_Init_DS18B20
                                    534 ;	main.c:68: LCD_init();
      000387 12 01 81         [24]  535 	lcall	_LCD_init
                                    536 ;	main.c:69: Timer_Init();
      00038A 12 02 6F         [24]  537 	lcall	_Timer_Init
                                    538 ;	main.c:71: unsigned char max_temp = 0;
      00038D 7F 00            [12]  539 	mov	r7,#0x00
                                    540 ;	main.c:72: unsigned char min_temp = 255;
      00038F 7E FF            [12]  541 	mov	r6,#0xff
                                    542 ;	main.c:74: while(1){
      000391                        543 00112$:
                                    544 ;	main.c:78: ET0 = 0;
                                    545 ;	assignBit
      000391 C2 A9            [12]  546 	clr	_ET0
                                    547 ;	main.c:80: temp = ReadTemperature();
      000393 C0 07            [24]  548 	push	ar7
      000395 C0 06            [24]  549 	push	ar6
      000397 12 01 0E         [24]  550 	lcall	_ReadTemperature
      00039A 85 82 09         [24]  551 	mov	_temp,dpl
      00039D D0 06            [24]  552 	pop	ar6
      00039F D0 07            [24]  553 	pop	ar7
                                    554 ;	main.c:81: ET1 = 1;
                                    555 ;	assignBit
      0003A1 D2 AB            [12]  556 	setb	_ET1
                                    557 ;	main.c:82: if(temp<20){
      0003A3 74 EC            [12]  558 	mov	a,#0x100 - 0x14
      0003A5 25 09            [12]  559 	add	a,_temp
      0003A7 40 08            [24]  560 	jc	00105$
                                    561 ;	main.c:83: motor_power = 5;
      0003A9 75 1B 05         [24]  562 	mov	_motor_power,#0x05
      0003AC 75 1C 00         [24]  563 	mov	(_motor_power + 1),#0x00
      0003AF 80 14            [24]  564 	sjmp	00106$
      0003B1                        565 00105$:
                                    566 ;	main.c:85: else if (temp < 30)
      0003B1 74 E2            [12]  567 	mov	a,#0x100 - 0x1e
      0003B3 25 09            [12]  568 	add	a,_temp
      0003B5 40 08            [24]  569 	jc	00102$
                                    570 ;	main.c:86: motor_power = 10;
      0003B7 75 1B 0A         [24]  571 	mov	_motor_power,#0x0a
      0003BA 75 1C 00         [24]  572 	mov	(_motor_power + 1),#0x00
      0003BD 80 06            [24]  573 	sjmp	00106$
      0003BF                        574 00102$:
                                    575 ;	main.c:88: motor_power = 15;
      0003BF 75 1B 0F         [24]  576 	mov	_motor_power,#0x0f
      0003C2 75 1C 00         [24]  577 	mov	(_motor_power + 1),#0x00
      0003C5                        578 00106$:
                                    579 ;	main.c:89: if (max_temp < temp)
      0003C5 C3               [12]  580 	clr	c
      0003C6 EF               [12]  581 	mov	a,r7
      0003C7 95 09            [12]  582 	subb	a,_temp
      0003C9 50 02            [24]  583 	jnc	00108$
                                    584 ;	main.c:90: max_temp = temp;
      0003CB AF 09            [24]  585 	mov	r7,_temp
      0003CD                        586 00108$:
                                    587 ;	main.c:91: if (min_temp > temp)
      0003CD C3               [12]  588 	clr	c
      0003CE E5 09            [12]  589 	mov	a,_temp
      0003D0 9E               [12]  590 	subb	a,r6
      0003D1 50 02            [24]  591 	jnc	00110$
                                    592 ;	main.c:92: min_temp = temp;
      0003D3 AE 09            [24]  593 	mov	r6,_temp
      0003D5                        594 00110$:
                                    595 ;	main.c:93: display(temp, max_temp, min_temp);
      0003D5 8F 1D            [24]  596 	mov	_display_PARM_2,r7
      0003D7 8E 1E            [24]  597 	mov	_display_PARM_3,r6
      0003D9 85 09 82         [24]  598 	mov	dpl,_temp
      0003DC C0 07            [24]  599 	push	ar7
      0003DE C0 06            [24]  600 	push	ar6
      0003E0 12 02 87         [24]  601 	lcall	_display
                                    602 ;	main.c:94: Delay_ms(100);
      0003E3 90 00 64         [24]  603 	mov	dptr,#0x0064
      0003E6 12 02 1D         [24]  604 	lcall	_Delay_ms
      0003E9 D0 06            [24]  605 	pop	ar6
      0003EB D0 07            [24]  606 	pop	ar7
                                    607 ;	main.c:103: }
      0003ED 80 A2            [24]  608 	sjmp	00112$
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'TIMER0_ISR'
                                    611 ;------------------------------------------------------------
                                    612 ;	main.c:104: void TIMER0_ISR() __interrupt TF0_VECTOR
                                    613 ;	-----------------------------------------
                                    614 ;	 function TIMER0_ISR
                                    615 ;	-----------------------------------------
      0003EF                        616 _TIMER0_ISR:
      0003EF C0 E0            [24]  617 	push	acc
      0003F1 C0 07            [24]  618 	push	ar7
      0003F3 C0 06            [24]  619 	push	ar6
      0003F5 C0 D0            [24]  620 	push	psw
      0003F7 75 D0 00         [24]  621 	mov	psw,#0x00
                                    622 ;	main.c:106: TH0 = TH0_5ms;
      0003FA 75 8C EE         [24]  623 	mov	_TH0,#0xee
                                    624 ;	main.c:107: TL0 = TL0_5ms;
      0003FD 75 8A 00         [24]  625 	mov	_TL0,#0x00
                                    626 ;	main.c:111: count++;
      000400 05 1A            [12]  627 	inc	_count
                                    628 ;	main.c:112: if (count == 20)
      000402 74 14            [12]  629 	mov	a,#0x14
      000404 B5 1A 03         [24]  630 	cjne	a,_count,00102$
                                    631 ;	main.c:114: count = 0;
      000407 75 1A 00         [24]  632 	mov	_count,#0x00
      00040A                        633 00102$:
                                    634 ;	main.c:116: if (count < motor_power)
      00040A AE 1A            [24]  635 	mov	r6,_count
      00040C 7F 00            [12]  636 	mov	r7,#0x00
      00040E C3               [12]  637 	clr	c
      00040F EE               [12]  638 	mov	a,r6
      000410 95 1B            [12]  639 	subb	a,_motor_power
      000412 EF               [12]  640 	mov	a,r7
      000413 95 1C            [12]  641 	subb	a,(_motor_power + 1)
      000415 50 04            [24]  642 	jnc	00104$
                                    643 ;	main.c:117: MOTOR = 1;
                                    644 ;	assignBit
      000417 D2 90            [12]  645 	setb	_P1_0
      000419 80 02            [24]  646 	sjmp	00106$
      00041B                        647 00104$:
                                    648 ;	main.c:119: MOTOR = 0;
                                    649 ;	assignBit
      00041B C2 90            [12]  650 	clr	_P1_0
      00041D                        651 00106$:
                                    652 ;	main.c:120: }
      00041D D0 D0            [24]  653 	pop	psw
      00041F D0 06            [24]  654 	pop	ar6
      000421 D0 07            [24]  655 	pop	ar7
      000423 D0 E0            [24]  656 	pop	acc
      000425 32               [24]  657 	reti
                                    658 ;	eliminated unneeded push/pop dpl
                                    659 ;	eliminated unneeded push/pop dph
                                    660 ;	eliminated unneeded push/pop b
                                    661 	.area CSEG    (CODE)
                                    662 	.area CONST   (CODE)
                                    663 	.area CONST   (CODE)
      000542                        664 ___str_0:
      000542 43 75 72 72 65 6E 74   665 	.ascii "Current: "
             3A 20
      00054B 00                     666 	.db 0x00
                                    667 	.area CSEG    (CODE)
                                    668 	.area CONST   (CODE)
      00054C                        669 ___str_1:
      00054C 4D 61 78 3A            670 	.ascii "Max:"
      000550 00                     671 	.db 0x00
                                    672 	.area CSEG    (CODE)
                                    673 	.area CONST   (CODE)
      000551                        674 ___str_2:
      000551 43 20 4D 69 6E 3A      675 	.ascii "C Min:"
      000557 00                     676 	.db 0x00
                                    677 	.area CSEG    (CODE)
                                    678 	.area CONST   (CODE)
      000558                        679 ___str_3:
      000558 43                     680 	.ascii "C"
      000559 00                     681 	.db 0x00
                                    682 	.area CSEG    (CODE)
                                    683 	.area XINIT   (CODE)
                                    684 	.area CABS    (ABS,CODE)
