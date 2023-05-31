;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EX0_ISR
	.globl _TIMER0_ISR
	.globl _main
	.globl _Delay_ms
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _key_count
	.globl _key_duration
	.globl _key_start
	.globl _count
	.globl _k
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_k::
	.ds 2
_count::
	.ds 2
_key_start::
	.ds 6
_key_duration::
	.ds 64
_key_count::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_EX0_ISR
	.ds	5
	ljmp	_TIMER0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_ms'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:16: void Delay_ms(int interval)
;	-----------------------------------------
;	 function Delay_ms
;	-----------------------------------------
_Delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	main.c:19:     for(i=0;i<1000;i++)
	mov	r4,#0x00
	mov	r5,#0x00
;	main.c:21:         for(j=0;j<interval;j++);
00111$:
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00107$:
;	main.c:19:     for(i=0;i<1000;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
00126$:
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jc	00111$
;	main.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:27: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:29:     k = 0;
	clr	a
	mov	_k,a
	mov	(_k + 1),a
;	main.c:30:     count = 0;
	mov	_count,a
	mov	(_count + 1),a
;	main.c:31:     key_count = 0;
;	1-genFromRTrack replaced	mov	_key_count,#0x00
	mov	_key_count,a
;	main.c:32:     LED7SEG_DATA = 0x00;
;	1-genFromRTrack replaced	mov	_P0,#0x00
	mov	_P0,a
;	main.c:36:     TMOD = 0x02;    //timer 0 mode 1
	mov	_TMOD,#0x02
;	main.c:37:     TH0 = 25;       //auto reload, period ~0.25ms
	mov	_TH0,#0x19
;	main.c:38:     TL0 = 0;
;	1-genFromRTrack replaced	mov	_TL0,#0x00
	mov	_TL0,a
;	main.c:42:     IT1 = 1;
;	assignBit
	setb	_IT1
;	main.c:43:     IE  = 0b10000011;
	mov	_IE,#0x83
;	main.c:44:     TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:45:     TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:49:     IR_NEC = 1;
;	assignBit
	setb	_P3_2
;	main.c:50:     LED_PIN1 = 1;
;	assignBit
	setb	_P2_7
;	main.c:54:     while(1)
00108$:
;	main.c:56:         if(key_count == 2 && key_start[2] < 40) {
	mov	a,#0x02
	cjne	a,_key_count,00102$
	clr	c
	mov	a,(_key_start + 0x0004)
	subb	a,#0x28
	mov	a,((_key_start + 0x0004) + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	main.c:57:             key_count = 0;
;	main.c:58:             k = 0;
	clr	a
	mov	_key_count,a
	mov	_k,a
	mov	(_k + 1),a
00102$:
;	main.c:63:         if(k > 35) {
	clr	c
	mov	a,#0x23
	subb	a,_k
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_k + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	main.c:64:             LED_PIN1 = key_duration[16];
	mov	a,(_key_duration + 0x0020)
	add	a,#0xff
	mov	_P2_7,c
;	main.c:66:             for(int j = 16; j < 24; j++) {
	mov	r6,#0x10
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x18
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
;	main.c:71: }
	sjmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_ISR'
;------------------------------------------------------------
;	main.c:75: void TIMER0_ISR() __interrupt TF0_VECTOR
;	-----------------------------------------
;	 function TIMER0_ISR
;	-----------------------------------------
_TIMER0_ISR:
	push	acc
	push	psw
;	main.c:77:     count++;
	inc	_count
	clr	a
	cjne	a,_count,00103$
	inc	(_count + 1)
00103$:
;	main.c:78: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'EX0_ISR'
;------------------------------------------------------------
;	main.c:82: void EX0_ISR() __interrupt IE0_VECTOR
;	-----------------------------------------
;	 function EX0_ISR
;	-----------------------------------------
_EX0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:84:     EX1 = 0;
;	assignBit
	clr	_EX1
;	main.c:85:     key_count++;
	inc	_key_count
;	main.c:86:     key_start[key_count] = count;
	mov	a,_key_count
	add	a,_key_count
	mov	r7,a
	add	a,#_key_start
	mov	r0,a
	mov	@r0,_count
	inc	r0
	mov	@r0,(_count + 1)
;	main.c:87:     if(key_count > 2 && key_count < 35) {
	mov	a,_key_count
	add	a,#0xff - 0x02
	jnc	00107$
	mov	a,#0x100 - 0x23
	add	a,_key_count
;	main.c:89:         if(count <= 7) key_duration[k] = 0;
	jc	00107$
	mov	a,#0x07
	subb	a,_count
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_count + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00104$
	mov	a,_k
	add	a,_k
	mov	r6,a
	mov	a,(_k + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_key_duration
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	sjmp	00105$
00104$:
;	main.c:90:         else if (count > 7) key_duration[k] = 1;
	clr	c
	mov	a,#0x07
	subb	a,_count
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_count + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	mov	a,_k
	add	a,_k
	mov	r6,a
	mov	a,(_k + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_key_duration
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00105$:
;	main.c:91:         k++;
	inc	_k
	clr	a
	cjne	a,_k,00137$
	inc	(_k + 1)
00137$:
00107$:
;	main.c:93:     if(key_count > 35) {
	mov	a,_key_count
	add	a,#0xff - 0x23
	jnc	00110$
;	main.c:94:         LED_PIN1 = 0;
;	assignBit
	clr	_P2_7
;	main.c:95:         Delay_ms(20);
	mov	dptr,#0x0014
	lcall	_Delay_ms
;	main.c:96:         LED_PIN1 = 1;
;	assignBit
	setb	_P2_7
;	main.c:97:         key_count = 0;
	mov	_key_count,#0x00
00110$:
;	main.c:99:     count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	main.c:100:     EX1 = 1;
;	assignBit
	setb	_EX1
;	main.c:101: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
