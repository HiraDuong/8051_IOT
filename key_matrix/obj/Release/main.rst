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
                                     12 	.globl _keyscan
                                     13 	.globl _delay
                                     14 	.globl _LCD_Write_String
                                     15 	.globl _LCD_Send_Command
                                     16 	.globl _LCD_init
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _key
                                    114 	.globl _keypressed
                                    115 ;--------------------------------------------------------
                                    116 ; special function registers
                                    117 ;--------------------------------------------------------
                                    118 	.area RSEG    (ABS,DATA)
      000000                        119 	.org 0x0000
                           000080   120 _P0	=	0x0080
                           000081   121 _SP	=	0x0081
                           000082   122 _DPL	=	0x0082
                           000083   123 _DPH	=	0x0083
                           000087   124 _PCON	=	0x0087
                           000088   125 _TCON	=	0x0088
                           000089   126 _TMOD	=	0x0089
                           00008A   127 _TL0	=	0x008a
                           00008B   128 _TL1	=	0x008b
                           00008C   129 _TH0	=	0x008c
                           00008D   130 _TH1	=	0x008d
                           000090   131 _P1	=	0x0090
                           000098   132 _SCON	=	0x0098
                           000099   133 _SBUF	=	0x0099
                           0000A0   134 _P2	=	0x00a0
                           0000A8   135 _IE	=	0x00a8
                           0000B0   136 _P3	=	0x00b0
                           0000B8   137 _IP	=	0x00b8
                           0000D0   138 _PSW	=	0x00d0
                           0000E0   139 _ACC	=	0x00e0
                           0000F0   140 _B	=	0x00f0
                                    141 ;--------------------------------------------------------
                                    142 ; special function bits
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0_0	=	0x0080
                           000081   147 _P0_1	=	0x0081
                           000082   148 _P0_2	=	0x0082
                           000083   149 _P0_3	=	0x0083
                           000084   150 _P0_4	=	0x0084
                           000085   151 _P0_5	=	0x0085
                           000086   152 _P0_6	=	0x0086
                           000087   153 _P0_7	=	0x0087
                           000088   154 _IT0	=	0x0088
                           000089   155 _IE0	=	0x0089
                           00008A   156 _IT1	=	0x008a
                           00008B   157 _IE1	=	0x008b
                           00008C   158 _TR0	=	0x008c
                           00008D   159 _TF0	=	0x008d
                           00008E   160 _TR1	=	0x008e
                           00008F   161 _TF1	=	0x008f
                           000090   162 _P1_0	=	0x0090
                           000091   163 _P1_1	=	0x0091
                           000092   164 _P1_2	=	0x0092
                           000093   165 _P1_3	=	0x0093
                           000094   166 _P1_4	=	0x0094
                           000095   167 _P1_5	=	0x0095
                           000096   168 _P1_6	=	0x0096
                           000097   169 _P1_7	=	0x0097
                           000098   170 _RI	=	0x0098
                           000099   171 _TI	=	0x0099
                           00009A   172 _RB8	=	0x009a
                           00009B   173 _TB8	=	0x009b
                           00009C   174 _REN	=	0x009c
                           00009D   175 _SM2	=	0x009d
                           00009E   176 _SM1	=	0x009e
                           00009F   177 _SM0	=	0x009f
                           0000A0   178 _P2_0	=	0x00a0
                           0000A1   179 _P2_1	=	0x00a1
                           0000A2   180 _P2_2	=	0x00a2
                           0000A3   181 _P2_3	=	0x00a3
                           0000A4   182 _P2_4	=	0x00a4
                           0000A5   183 _P2_5	=	0x00a5
                           0000A6   184 _P2_6	=	0x00a6
                           0000A7   185 _P2_7	=	0x00a7
                           0000A8   186 _EX0	=	0x00a8
                           0000A9   187 _ET0	=	0x00a9
                           0000AA   188 _EX1	=	0x00aa
                           0000AB   189 _ET1	=	0x00ab
                           0000AC   190 _ES	=	0x00ac
                           0000AF   191 _EA	=	0x00af
                           0000B0   192 _P3_0	=	0x00b0
                           0000B1   193 _P3_1	=	0x00b1
                           0000B2   194 _P3_2	=	0x00b2
                           0000B3   195 _P3_3	=	0x00b3
                           0000B4   196 _P3_4	=	0x00b4
                           0000B5   197 _P3_5	=	0x00b5
                           0000B6   198 _P3_6	=	0x00b6
                           0000B7   199 _P3_7	=	0x00b7
                           0000B0   200 _RXD	=	0x00b0
                           0000B1   201 _TXD	=	0x00b1
                           0000B2   202 _INT0	=	0x00b2
                           0000B3   203 _INT1	=	0x00b3
                           0000B4   204 _T0	=	0x00b4
                           0000B5   205 _T1	=	0x00b5
                           0000B6   206 _WR	=	0x00b6
                           0000B7   207 _RD	=	0x00b7
                           0000B8   208 _PX0	=	0x00b8
                           0000B9   209 _PT0	=	0x00b9
                           0000BA   210 _PX1	=	0x00ba
                           0000BB   211 _PT1	=	0x00bb
                           0000BC   212 _PS	=	0x00bc
                           0000D0   213 _P	=	0x00d0
                           0000D1   214 _F1	=	0x00d1
                           0000D2   215 _OV	=	0x00d2
                           0000D3   216 _RS0	=	0x00d3
                           0000D4   217 _RS1	=	0x00d4
                           0000D5   218 _F0	=	0x00d5
                           0000D6   219 _AC	=	0x00d6
                           0000D7   220 _CY	=	0x00d7
                                    221 ;--------------------------------------------------------
                                    222 ; overlayable register banks
                                    223 ;--------------------------------------------------------
                                    224 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        225 	.ds 8
                                    226 ;--------------------------------------------------------
                                    227 ; internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area DSEG    (DATA)
      000009                        230 _keypressed::
      000009                        231 	.ds 2
      00000B                        232 _key::
      00000B                        233 	.ds 2
      00000D                        234 _main_key_char_65536_20:
      00000D                        235 	.ds 3
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000012                        243 __start__stack:
      000012                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external initialized ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 06         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 ;	main.c:6: int keypressed = 0;
      00005F E4               [12]  305 	clr	a
      000060 F5 09            [12]  306 	mov	_keypressed,a
      000062 F5 0A            [12]  307 	mov	(_keypressed + 1),a
                                    308 	.area GSFINAL (CODE)
      000064 02 00 03         [24]  309 	ljmp	__sdcc_program_startup
                                    310 ;--------------------------------------------------------
                                    311 ; Home
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area HOME    (CODE)
      000003                        315 __sdcc_program_startup:
      000003 02 02 3F         [24]  316 	ljmp	_main
                                    317 ;	return from main will return to caller
                                    318 ;--------------------------------------------------------
                                    319 ; code
                                    320 ;--------------------------------------------------------
                                    321 	.area CSEG    (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'delay'
                                    324 ;------------------------------------------------------------
                                    325 ;time                      Allocated to registers 
                                    326 ;i                         Allocated to registers r4 r5 
                                    327 ;------------------------------------------------------------
                                    328 ;	main.c:8: void delay(int time){
                                    329 ;	-----------------------------------------
                                    330 ;	 function delay
                                    331 ;	-----------------------------------------
      000172                        332 _delay:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
      000172 85 82 10         [24]  341 	mov	__mulint_PARM_2,dpl
      000175 85 83 11         [24]  342 	mov	(__mulint_PARM_2 + 1),dph
                                    343 ;	main.c:9: for(int i = 0;i<time*10000;i++){
      000178 90 27 10         [24]  344 	mov	dptr,#0x2710
      00017B 12 02 47         [24]  345 	lcall	__mulint
      00017E AE 82            [24]  346 	mov	r6,dpl
      000180 AF 83            [24]  347 	mov	r7,dph
      000182 7C 00            [12]  348 	mov	r4,#0x00
      000184 7D 00            [12]  349 	mov	r5,#0x00
      000186                        350 00103$:
      000186 C3               [12]  351 	clr	c
      000187 EC               [12]  352 	mov	a,r4
      000188 9E               [12]  353 	subb	a,r6
      000189 ED               [12]  354 	mov	a,r5
      00018A 64 80            [12]  355 	xrl	a,#0x80
      00018C 8F F0            [24]  356 	mov	b,r7
      00018E 63 F0 80         [24]  357 	xrl	b,#0x80
      000191 95 F0            [12]  358 	subb	a,b
      000193 50 07            [24]  359 	jnc	00105$
      000195 0C               [12]  360 	inc	r4
      000196 BC 00 ED         [24]  361 	cjne	r4,#0x00,00103$
      000199 0D               [12]  362 	inc	r5
      00019A 80 EA            [24]  363 	sjmp	00103$
      00019C                        364 00105$:
                                    365 ;	main.c:12: }
      00019C 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'keyscan'
                                    369 ;------------------------------------------------------------
                                    370 ;	main.c:13: void keyscan()
                                    371 ;	-----------------------------------------
                                    372 ;	 function keyscan
                                    373 ;	-----------------------------------------
      00019D                        374 _keyscan:
                                    375 ;	main.c:17: keypressed = 0;
      00019D E4               [12]  376 	clr	a
      00019E F5 09            [12]  377 	mov	_keypressed,a
      0001A0 F5 0A            [12]  378 	mov	(_keypressed + 1),a
                                    379 ;	main.c:19: P1=0xfe;
                                    380 ;	main.c:21: if(P1!=0xfe)
      0001A2 74 FE            [12]  381 	mov	a,#0xfe
      0001A4 F5 90            [12]  382 	mov	_P1,a
      0001A6 B5 90 01         [24]  383 	cjne	a,_P1,00148$
      0001A9 22               [24]  384 	ret
      0001AA                        385 00148$:
                                    386 ;	main.c:25: delay(1000);
      0001AA 90 03 E8         [24]  387 	mov	dptr,#0x03e8
      0001AD 12 01 72         [24]  388 	lcall	_delay
                                    389 ;	main.c:27: if(P1!=0xfe)
      0001B0 74 FE            [12]  390 	mov	a,#0xfe
      0001B2 B5 90 03         [24]  391 	cjne	a,_P1,00149$
      0001B5 02 02 33         [24]  392 	ljmp	00109$
      0001B8                        393 00149$:
                                    394 ;	main.c:31: key=P1&0xf0;
      0001B8 AE 90            [24]  395 	mov	r6,_P1
      0001BA 7F 00            [12]  396 	mov	r7,#0x00
      0001BC 74 F0            [12]  397 	mov	a,#0xf0
      0001BE 5E               [12]  398 	anl	a,r6
      0001BF F5 0B            [12]  399 	mov	_key,a
                                    400 ;	1-genFromRTrack replaced	mov	(_key + 1),#0x00
      0001C1 8F 0C            [24]  401 	mov	(_key + 1),r7
                                    402 ;	main.c:33: switch(key)
      0001C3 74 70            [12]  403 	mov	a,#0x70
      0001C5 B5 0B 06         [24]  404 	cjne	a,_key,00150$
      0001C8 E4               [12]  405 	clr	a
      0001C9 B5 0C 02         [24]  406 	cjne	a,(_key + 1),00150$
      0001CC 80 23            [24]  407 	sjmp	00101$
      0001CE                        408 00150$:
      0001CE 74 B0            [12]  409 	mov	a,#0xb0
      0001D0 B5 0B 06         [24]  410 	cjne	a,_key,00151$
      0001D3 E4               [12]  411 	clr	a
      0001D4 B5 0C 02         [24]  412 	cjne	a,(_key + 1),00151$
      0001D7 80 29            [24]  413 	sjmp	00102$
      0001D9                        414 00151$:
      0001D9 74 D0            [12]  415 	mov	a,#0xd0
      0001DB B5 0B 06         [24]  416 	cjne	a,_key,00152$
      0001DE E4               [12]  417 	clr	a
      0001DF B5 0C 02         [24]  418 	cjne	a,(_key + 1),00152$
      0001E2 80 2F            [24]  419 	sjmp	00103$
      0001E4                        420 00152$:
      0001E4 74 E0            [12]  421 	mov	a,#0xe0
      0001E6 B5 0B 06         [24]  422 	cjne	a,_key,00153$
      0001E9 E4               [12]  423 	clr	a
      0001EA B5 0C 02         [24]  424 	cjne	a,(_key + 1),00153$
      0001ED 80 35            [24]  425 	sjmp	00104$
      0001EF                        426 00153$:
                                    427 ;	main.c:36: case 0x70 :
      0001EF 80 42            [24]  428 	sjmp	00109$
      0001F1                        429 00101$:
                                    430 ;	main.c:37: {   LCD_Send_Command(0x01); //Xoa man hinh
      0001F1 75 82 01         [24]  431 	mov	dpl,#0x01
      0001F4 12 00 67         [24]  432 	lcall	_LCD_Send_Command
                                    433 ;	main.c:38: LCD_Write_String("04");
      0001F7 90 02 9C         [24]  434 	mov	dptr,#___str_0
      0001FA 75 F0 80         [24]  435 	mov	b,#0x80
      0001FD 12 00 B3         [24]  436 	lcall	_LCD_Write_String
                                    437 ;	main.c:39: break;
                                    438 ;	main.c:42: case 0xB0 :
      000200 80 31            [24]  439 	sjmp	00109$
      000202                        440 00102$:
                                    441 ;	main.c:43: {   LCD_Send_Command(0x01); //Xoa man hinh
      000202 75 82 01         [24]  442 	mov	dpl,#0x01
      000205 12 00 67         [24]  443 	lcall	_LCD_Send_Command
                                    444 ;	main.c:44: LCD_Write_String("08");
      000208 90 02 9F         [24]  445 	mov	dptr,#___str_1
      00020B 75 F0 80         [24]  446 	mov	b,#0x80
      00020E 12 00 B3         [24]  447 	lcall	_LCD_Write_String
                                    448 ;	main.c:45: break;
                                    449 ;	main.c:47: case 0xD0 :
      000211 80 20            [24]  450 	sjmp	00109$
      000213                        451 00103$:
                                    452 ;	main.c:48: {   LCD_Send_Command(0x01); //Xoa man hinh
      000213 75 82 01         [24]  453 	mov	dpl,#0x01
      000216 12 00 67         [24]  454 	lcall	_LCD_Send_Command
                                    455 ;	main.c:49: LCD_Write_String("12");
      000219 90 02 A2         [24]  456 	mov	dptr,#___str_2
      00021C 75 F0 80         [24]  457 	mov	b,#0x80
      00021F 12 00 B3         [24]  458 	lcall	_LCD_Write_String
                                    459 ;	main.c:50: break;
                                    460 ;	main.c:52: case 0xE0 :
      000222 80 0F            [24]  461 	sjmp	00109$
      000224                        462 00104$:
                                    463 ;	main.c:53: {   LCD_Send_Command(0x01); //Xoa man hinh
      000224 75 82 01         [24]  464 	mov	dpl,#0x01
      000227 12 00 67         [24]  465 	lcall	_LCD_Send_Command
                                    466 ;	main.c:54: LCD_Write_String("16");
      00022A 90 02 A5         [24]  467 	mov	dptr,#___str_3
      00022D 75 F0 80         [24]  468 	mov	b,#0x80
      000230 12 00 B3         [24]  469 	lcall	_LCD_Write_String
                                    470 ;	main.c:64: while(P1!=0xfe);
      000233                        471 00109$:
      000233 74 FE            [12]  472 	mov	a,#0xfe
      000235 B5 90 FB         [24]  473 	cjne	a,_P1,00109$
                                    474 ;	main.c:68: keypressed = 1;
      000238 75 09 01         [24]  475 	mov	_keypressed,#0x01
      00023B 75 0A 00         [24]  476 	mov	(_keypressed + 1),#0x00
                                    477 ;	main.c:76: }
      00023E 22               [24]  478 	ret
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'main'
                                    481 ;------------------------------------------------------------
                                    482 ;key_char                  Allocated with name '_main_key_char_65536_20'
                                    483 ;------------------------------------------------------------
                                    484 ;	main.c:78: void main(void)
                                    485 ;	-----------------------------------------
                                    486 ;	 function main
                                    487 ;	-----------------------------------------
      00023F                        488 _main:
                                    489 ;	main.c:81: LCD_init();
      00023F 12 00 84         [24]  490 	lcall	_LCD_init
                                    491 ;	main.c:84: while(1){
      000242                        492 00102$:
                                    493 ;	main.c:85: keyscan();
      000242 12 01 9D         [24]  494 	lcall	_keyscan
                                    495 ;	main.c:89: }
      000245 80 FB            [24]  496 	sjmp	00102$
                                    497 	.area CSEG    (CODE)
                                    498 	.area CONST   (CODE)
                                    499 	.area CONST   (CODE)
      00029C                        500 ___str_0:
      00029C 30 34                  501 	.ascii "04"
      00029E 00                     502 	.db 0x00
                                    503 	.area CSEG    (CODE)
                                    504 	.area CONST   (CODE)
      00029F                        505 ___str_1:
      00029F 30 38                  506 	.ascii "08"
      0002A1 00                     507 	.db 0x00
                                    508 	.area CSEG    (CODE)
                                    509 	.area CONST   (CODE)
      0002A2                        510 ___str_2:
      0002A2 31 32                  511 	.ascii "12"
      0002A4 00                     512 	.db 0x00
                                    513 	.area CSEG    (CODE)
                                    514 	.area CONST   (CODE)
      0002A5                        515 ___str_3:
      0002A5 31 36                  516 	.ascii "16"
      0002A7 00                     517 	.db 0x00
                                    518 	.area CSEG    (CODE)
                                    519 	.area XINIT   (CODE)
                                    520 	.area CABS    (ABS,CODE)
