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
                                     11 	.globl _EX0_ISR
                                     12 	.globl _TIMER0_ISR
                                     13 	.globl _main
                                     14 	.globl _Delay_ms
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _key_count
                                    112 	.globl _key_duration
                                    113 	.globl _key_start
                                    114 	.globl _count
                                    115 	.globl _k
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable bit register bank
                                    229 ;--------------------------------------------------------
                                    230 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        231 bits:
      000020                        232 	.ds 1
                           008000   233 	b0 = bits[0]
                           008100   234 	b1 = bits[1]
                           008200   235 	b2 = bits[2]
                           008300   236 	b3 = bits[3]
                           008400   237 	b4 = bits[4]
                           008500   238 	b5 = bits[5]
                           008600   239 	b6 = bits[6]
                           008700   240 	b7 = bits[7]
                                    241 ;--------------------------------------------------------
                                    242 ; internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area DSEG    (DATA)
      000021                        245 _k::
      000021                        246 	.ds 2
      000023                        247 _count::
      000023                        248 	.ds 2
      000025                        249 _key_start::
      000025                        250 	.ds 6
      00002B                        251 _key_duration::
      00002B                        252 	.ds 64
      00006B                        253 _key_count::
      00006B                        254 	.ds 1
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram
                                    257 ;--------------------------------------------------------
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; Stack segment in internal ram
                                    262 ;--------------------------------------------------------
                                    263 	.area	SSEG
      00006C                        264 __start__stack:
      00006C                        265 	.ds	1
                                    266 
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
                                    280 ;--------------------------------------------------------
                                    281 ; paged external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area PSEG    (PAG,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XSEG    (XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XABS    (ABS,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; external initialized ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XISEG   (XDATA)
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT0 (CODE)
                                    298 	.area GSINIT1 (CODE)
                                    299 	.area GSINIT2 (CODE)
                                    300 	.area GSINIT3 (CODE)
                                    301 	.area GSINIT4 (CODE)
                                    302 	.area GSINIT5 (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area CSEG    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; interrupt vector
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
      000000                        310 __interrupt_vect:
      000000 02 00 11         [24]  311 	ljmp	__sdcc_gsinit_startup
      000003 02 01 19         [24]  312 	ljmp	_EX0_ISR
      000006                        313 	.ds	5
      00000B 02 01 08         [24]  314 	ljmp	_TIMER0_ISR
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.globl __sdcc_gsinit_startup
                                    323 	.globl __sdcc_program_startup
                                    324 	.globl __start__stack
                                    325 	.globl __mcs51_genXINIT
                                    326 	.globl __mcs51_genXRAMCLEAR
                                    327 	.globl __mcs51_genRAMCLEAR
                                    328 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  329 	ljmp	__sdcc_program_startup
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
      00000E                        335 __sdcc_program_startup:
      00000E 02 00 A0         [24]  336 	ljmp	_main
                                    337 ;	return from main will return to caller
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'Delay_ms'
                                    344 ;------------------------------------------------------------
                                    345 ;interval                  Allocated to registers r6 r7 
                                    346 ;i                         Allocated to registers r4 r5 
                                    347 ;j                         Allocated to registers r2 r3 
                                    348 ;------------------------------------------------------------
                                    349 ;	main.c:16: void Delay_ms(int interval)
                                    350 ;	-----------------------------------------
                                    351 ;	 function Delay_ms
                                    352 ;	-----------------------------------------
      00006D                        353 _Delay_ms:
                           000007   354 	ar7 = 0x07
                           000006   355 	ar6 = 0x06
                           000005   356 	ar5 = 0x05
                           000004   357 	ar4 = 0x04
                           000003   358 	ar3 = 0x03
                           000002   359 	ar2 = 0x02
                           000001   360 	ar1 = 0x01
                           000000   361 	ar0 = 0x00
      00006D AE 82            [24]  362 	mov	r6,dpl
      00006F AF 83            [24]  363 	mov	r7,dph
                                    364 ;	main.c:19:     for(i=0;i<1000;i++)
      000071 7C 00            [12]  365 	mov	r4,#0x00
      000073 7D 00            [12]  366 	mov	r5,#0x00
                                    367 ;	main.c:21:         for(j=0;j<interval;j++);
      000075                        368 00111$:
      000075 7A 00            [12]  369 	mov	r2,#0x00
      000077 7B 00            [12]  370 	mov	r3,#0x00
      000079                        371 00104$:
      000079 C3               [12]  372 	clr	c
      00007A EA               [12]  373 	mov	a,r2
      00007B 9E               [12]  374 	subb	a,r6
      00007C EB               [12]  375 	mov	a,r3
      00007D 64 80            [12]  376 	xrl	a,#0x80
      00007F 8F F0            [24]  377 	mov	b,r7
      000081 63 F0 80         [24]  378 	xrl	b,#0x80
      000084 95 F0            [12]  379 	subb	a,b
      000086 50 07            [24]  380 	jnc	00107$
      000088 0A               [12]  381 	inc	r2
      000089 BA 00 ED         [24]  382 	cjne	r2,#0x00,00104$
      00008C 0B               [12]  383 	inc	r3
      00008D 80 EA            [24]  384 	sjmp	00104$
      00008F                        385 00107$:
                                    386 ;	main.c:19:     for(i=0;i<1000;i++)
      00008F 0C               [12]  387 	inc	r4
      000090 BC 00 01         [24]  388 	cjne	r4,#0x00,00126$
      000093 0D               [12]  389 	inc	r5
      000094                        390 00126$:
      000094 C3               [12]  391 	clr	c
      000095 EC               [12]  392 	mov	a,r4
      000096 94 E8            [12]  393 	subb	a,#0xe8
      000098 ED               [12]  394 	mov	a,r5
      000099 64 80            [12]  395 	xrl	a,#0x80
      00009B 94 83            [12]  396 	subb	a,#0x83
      00009D 40 D6            [24]  397 	jc	00111$
                                    398 ;	main.c:23: }
      00009F 22               [24]  399 	ret
                                    400 ;------------------------------------------------------------
                                    401 ;Allocation info for local variables in function 'main'
                                    402 ;------------------------------------------------------------
                                    403 ;j                         Allocated to registers r6 r7 
                                    404 ;------------------------------------------------------------
                                    405 ;	main.c:27: void main(void)
                                    406 ;	-----------------------------------------
                                    407 ;	 function main
                                    408 ;	-----------------------------------------
      0000A0                        409 _main:
                                    410 ;	main.c:29:     k = 0;
      0000A0 E4               [12]  411 	clr	a
      0000A1 F5 21            [12]  412 	mov	_k,a
      0000A3 F5 22            [12]  413 	mov	(_k + 1),a
                                    414 ;	main.c:30:     count = 0;
      0000A5 F5 23            [12]  415 	mov	_count,a
      0000A7 F5 24            [12]  416 	mov	(_count + 1),a
                                    417 ;	main.c:31:     key_count = 0;
                                    418 ;	1-genFromRTrack replaced	mov	_key_count,#0x00
      0000A9 F5 6B            [12]  419 	mov	_key_count,a
                                    420 ;	main.c:32:     LED7SEG_DATA = 0x00;
                                    421 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      0000AB F5 80            [12]  422 	mov	_P0,a
                                    423 ;	main.c:36:     TMOD = 0x02;    //timer 0 mode 1
      0000AD 75 89 02         [24]  424 	mov	_TMOD,#0x02
                                    425 ;	main.c:37:     TH0 = 25;       //auto reload, period ~0.25ms
      0000B0 75 8C 19         [24]  426 	mov	_TH0,#0x19
                                    427 ;	main.c:38:     TL0 = 0;
                                    428 ;	1-genFromRTrack replaced	mov	_TL0,#0x00
      0000B3 F5 8A            [12]  429 	mov	_TL0,a
                                    430 ;	main.c:42:     IT1 = 1;
                                    431 ;	assignBit
      0000B5 D2 8A            [12]  432 	setb	_IT1
                                    433 ;	main.c:43:     IE  = 0b10000011;
      0000B7 75 A8 83         [24]  434 	mov	_IE,#0x83
                                    435 ;	main.c:44:     TF0 = 0;
                                    436 ;	assignBit
      0000BA C2 8D            [12]  437 	clr	_TF0
                                    438 ;	main.c:45:     TR0 = 1;
                                    439 ;	assignBit
      0000BC D2 8C            [12]  440 	setb	_TR0
                                    441 ;	main.c:49:     IR_NEC = 1;
                                    442 ;	assignBit
      0000BE D2 B2            [12]  443 	setb	_P3_2
                                    444 ;	main.c:50:     LED_PIN1 = 1;
                                    445 ;	assignBit
      0000C0 D2 A7            [12]  446 	setb	_P2_7
                                    447 ;	main.c:54:     while(1)
      0000C2                        448 00108$:
                                    449 ;	main.c:56:         if(key_count == 2 && key_start[2] < 40) {
      0000C2 74 02            [12]  450 	mov	a,#0x02
      0000C4 B5 6B 14         [24]  451 	cjne	a,_key_count,00102$
      0000C7 C3               [12]  452 	clr	c
      0000C8 E5 29            [12]  453 	mov	a,(_key_start + 0x0004)
      0000CA 94 28            [12]  454 	subb	a,#0x28
      0000CC E5 2A            [12]  455 	mov	a,((_key_start + 0x0004) + 1)
      0000CE 64 80            [12]  456 	xrl	a,#0x80
      0000D0 94 80            [12]  457 	subb	a,#0x80
      0000D2 50 07            [24]  458 	jnc	00102$
                                    459 ;	main.c:57:             key_count = 0;
                                    460 ;	main.c:58:             k = 0;
      0000D4 E4               [12]  461 	clr	a
      0000D5 F5 6B            [12]  462 	mov	_key_count,a
      0000D7 F5 21            [12]  463 	mov	_k,a
      0000D9 F5 22            [12]  464 	mov	(_k + 1),a
      0000DB                        465 00102$:
                                    466 ;	main.c:63:         if(k > 35) {
      0000DB C3               [12]  467 	clr	c
      0000DC 74 23            [12]  468 	mov	a,#0x23
      0000DE 95 21            [12]  469 	subb	a,_k
      0000E0 74 80            [12]  470 	mov	a,#(0x00 ^ 0x80)
      0000E2 85 22 F0         [24]  471 	mov	b,(_k + 1)
      0000E5 63 F0 80         [24]  472 	xrl	b,#0x80
      0000E8 95 F0            [12]  473 	subb	a,b
      0000EA 50 D6            [24]  474 	jnc	00108$
                                    475 ;	main.c:64:             LED_PIN1 = key_duration[16];
      0000EC E5 4B            [12]  476 	mov	a,(_key_duration + 0x0020)
      0000EE 24 FF            [12]  477 	add	a,#0xff
      0000F0 92 A7            [24]  478 	mov	_P2_7,c
                                    479 ;	main.c:66:             for(int j = 16; j < 24; j++) {
      0000F2 7E 10            [12]  480 	mov	r6,#0x10
      0000F4 7F 00            [12]  481 	mov	r7,#0x00
      0000F6                        482 00111$:
      0000F6 C3               [12]  483 	clr	c
      0000F7 EE               [12]  484 	mov	a,r6
      0000F8 94 18            [12]  485 	subb	a,#0x18
      0000FA EF               [12]  486 	mov	a,r7
      0000FB 64 80            [12]  487 	xrl	a,#0x80
      0000FD 94 80            [12]  488 	subb	a,#0x80
      0000FF 50 C1            [24]  489 	jnc	00108$
      000101 0E               [12]  490 	inc	r6
      000102 BE 00 F1         [24]  491 	cjne	r6,#0x00,00111$
      000105 0F               [12]  492 	inc	r7
                                    493 ;	main.c:71: }
      000106 80 EE            [24]  494 	sjmp	00111$
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'TIMER0_ISR'
                                    497 ;------------------------------------------------------------
                                    498 ;	main.c:75: void TIMER0_ISR() __interrupt TF0_VECTOR
                                    499 ;	-----------------------------------------
                                    500 ;	 function TIMER0_ISR
                                    501 ;	-----------------------------------------
      000108                        502 _TIMER0_ISR:
      000108 C0 E0            [24]  503 	push	acc
      00010A C0 D0            [24]  504 	push	psw
                                    505 ;	main.c:77:     count++;
      00010C 05 23            [12]  506 	inc	_count
      00010E E4               [12]  507 	clr	a
      00010F B5 23 02         [24]  508 	cjne	a,_count,00103$
      000112 05 24            [12]  509 	inc	(_count + 1)
      000114                        510 00103$:
                                    511 ;	main.c:78: }
      000114 D0 D0            [24]  512 	pop	psw
      000116 D0 E0            [24]  513 	pop	acc
      000118 32               [24]  514 	reti
                                    515 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    516 ;	eliminated unneeded push/pop dpl
                                    517 ;	eliminated unneeded push/pop dph
                                    518 ;	eliminated unneeded push/pop b
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'EX0_ISR'
                                    521 ;------------------------------------------------------------
                                    522 ;	main.c:82: void EX0_ISR() __interrupt IE0_VECTOR
                                    523 ;	-----------------------------------------
                                    524 ;	 function EX0_ISR
                                    525 ;	-----------------------------------------
      000119                        526 _EX0_ISR:
      000119 C0 20            [24]  527 	push	bits
      00011B C0 E0            [24]  528 	push	acc
      00011D C0 F0            [24]  529 	push	b
      00011F C0 82            [24]  530 	push	dpl
      000121 C0 83            [24]  531 	push	dph
      000123 C0 07            [24]  532 	push	(0+7)
      000125 C0 06            [24]  533 	push	(0+6)
      000127 C0 05            [24]  534 	push	(0+5)
      000129 C0 04            [24]  535 	push	(0+4)
      00012B C0 03            [24]  536 	push	(0+3)
      00012D C0 02            [24]  537 	push	(0+2)
      00012F C0 01            [24]  538 	push	(0+1)
      000131 C0 00            [24]  539 	push	(0+0)
      000133 C0 D0            [24]  540 	push	psw
      000135 75 D0 00         [24]  541 	mov	psw,#0x00
                                    542 ;	main.c:84:     EX1 = 0;
                                    543 ;	assignBit
      000138 C2 AA            [12]  544 	clr	_EX1
                                    545 ;	main.c:85:     key_count++;
      00013A 05 6B            [12]  546 	inc	_key_count
                                    547 ;	main.c:86:     key_start[key_count] = count;
      00013C E5 6B            [12]  548 	mov	a,_key_count
      00013E 25 6B            [12]  549 	add	a,_key_count
      000140 FF               [12]  550 	mov	r7,a
      000141 24 25            [12]  551 	add	a,#_key_start
      000143 F8               [12]  552 	mov	r0,a
      000144 A6 23            [24]  553 	mov	@r0,_count
      000146 08               [12]  554 	inc	r0
      000147 A6 24            [24]  555 	mov	@r0,(_count + 1)
                                    556 ;	main.c:87:     if(key_count > 2 && key_count < 35) {
      000149 E5 6B            [12]  557 	mov	a,_key_count
      00014B 24 FD            [12]  558 	add	a,#0xff - 0x02
      00014D 50 55            [24]  559 	jnc	00107$
      00014F 74 DD            [12]  560 	mov	a,#0x100 - 0x23
      000151 25 6B            [12]  561 	add	a,_key_count
                                    562 ;	main.c:89:         if(count <= 7) key_duration[k] = 0;
      000153 40 4F            [24]  563 	jc	00107$
      000155 74 07            [12]  564 	mov	a,#0x07
      000157 95 23            [12]  565 	subb	a,_count
      000159 74 80            [12]  566 	mov	a,#(0x00 ^ 0x80)
      00015B 85 24 F0         [24]  567 	mov	b,(_count + 1)
      00015E 63 F0 80         [24]  568 	xrl	b,#0x80
      000161 95 F0            [12]  569 	subb	a,b
      000163 40 14            [24]  570 	jc	00104$
      000165 E5 21            [12]  571 	mov	a,_k
      000167 25 21            [12]  572 	add	a,_k
      000169 FE               [12]  573 	mov	r6,a
      00016A E5 22            [12]  574 	mov	a,(_k + 1)
      00016C 33               [12]  575 	rlc	a
      00016D FF               [12]  576 	mov	r7,a
      00016E EE               [12]  577 	mov	a,r6
      00016F 24 2B            [12]  578 	add	a,#_key_duration
      000171 F8               [12]  579 	mov	r0,a
      000172 76 00            [12]  580 	mov	@r0,#0x00
      000174 08               [12]  581 	inc	r0
      000175 76 00            [12]  582 	mov	@r0,#0x00
      000177 80 23            [24]  583 	sjmp	00105$
      000179                        584 00104$:
                                    585 ;	main.c:90:         else if (count > 7) key_duration[k] = 1;
      000179 C3               [12]  586 	clr	c
      00017A 74 07            [12]  587 	mov	a,#0x07
      00017C 95 23            [12]  588 	subb	a,_count
      00017E 74 80            [12]  589 	mov	a,#(0x00 ^ 0x80)
      000180 85 24 F0         [24]  590 	mov	b,(_count + 1)
      000183 63 F0 80         [24]  591 	xrl	b,#0x80
      000186 95 F0            [12]  592 	subb	a,b
      000188 50 12            [24]  593 	jnc	00105$
      00018A E5 21            [12]  594 	mov	a,_k
      00018C 25 21            [12]  595 	add	a,_k
      00018E FE               [12]  596 	mov	r6,a
      00018F E5 22            [12]  597 	mov	a,(_k + 1)
      000191 33               [12]  598 	rlc	a
      000192 FF               [12]  599 	mov	r7,a
      000193 EE               [12]  600 	mov	a,r6
      000194 24 2B            [12]  601 	add	a,#_key_duration
      000196 F8               [12]  602 	mov	r0,a
      000197 76 01            [12]  603 	mov	@r0,#0x01
      000199 08               [12]  604 	inc	r0
      00019A 76 00            [12]  605 	mov	@r0,#0x00
      00019C                        606 00105$:
                                    607 ;	main.c:91:         k++;
      00019C 05 21            [12]  608 	inc	_k
      00019E E4               [12]  609 	clr	a
      00019F B5 21 02         [24]  610 	cjne	a,_k,00137$
      0001A2 05 22            [12]  611 	inc	(_k + 1)
      0001A4                        612 00137$:
      0001A4                        613 00107$:
                                    614 ;	main.c:93:     if(key_count > 35) {
      0001A4 E5 6B            [12]  615 	mov	a,_key_count
      0001A6 24 DC            [12]  616 	add	a,#0xff - 0x23
      0001A8 50 0D            [24]  617 	jnc	00110$
                                    618 ;	main.c:94:         LED_PIN1 = 0;
                                    619 ;	assignBit
      0001AA C2 A7            [12]  620 	clr	_P2_7
                                    621 ;	main.c:95:         Delay_ms(20);
      0001AC 90 00 14         [24]  622 	mov	dptr,#0x0014
      0001AF 12 00 6D         [24]  623 	lcall	_Delay_ms
                                    624 ;	main.c:96:         LED_PIN1 = 1;
                                    625 ;	assignBit
      0001B2 D2 A7            [12]  626 	setb	_P2_7
                                    627 ;	main.c:97:         key_count = 0;
      0001B4 75 6B 00         [24]  628 	mov	_key_count,#0x00
      0001B7                        629 00110$:
                                    630 ;	main.c:99:     count = 0;
      0001B7 E4               [12]  631 	clr	a
      0001B8 F5 23            [12]  632 	mov	_count,a
      0001BA F5 24            [12]  633 	mov	(_count + 1),a
                                    634 ;	main.c:100:     EX1 = 1;
                                    635 ;	assignBit
      0001BC D2 AA            [12]  636 	setb	_EX1
                                    637 ;	main.c:101: }
      0001BE D0 D0            [24]  638 	pop	psw
      0001C0 D0 00            [24]  639 	pop	(0+0)
      0001C2 D0 01            [24]  640 	pop	(0+1)
      0001C4 D0 02            [24]  641 	pop	(0+2)
      0001C6 D0 03            [24]  642 	pop	(0+3)
      0001C8 D0 04            [24]  643 	pop	(0+4)
      0001CA D0 05            [24]  644 	pop	(0+5)
      0001CC D0 06            [24]  645 	pop	(0+6)
      0001CE D0 07            [24]  646 	pop	(0+7)
      0001D0 D0 83            [24]  647 	pop	dph
      0001D2 D0 82            [24]  648 	pop	dpl
      0001D4 D0 F0            [24]  649 	pop	b
      0001D6 D0 E0            [24]  650 	pop	acc
      0001D8 D0 20            [24]  651 	pop	bits
      0001DA 32               [24]  652 	reti
                                    653 	.area CSEG    (CODE)
                                    654 	.area CONST   (CODE)
                                    655 	.area XINIT   (CODE)
                                    656 	.area CABS    (ABS,CODE)
