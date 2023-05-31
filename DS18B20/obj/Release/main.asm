;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIMER0_ISR
	.globl _main
	.globl _display
	.globl _Timer_Init
	.globl _Delay_ms
	.globl _LCD_GotoXY
	.globl _LCD_Write_String
	.globl _LCD_Write_One_Char
	.globl _LCD_init
	.globl _ReadTemperature
	.globl _Init_DS18B20
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
	.globl _display_PARM_3
	.globl _display_PARM_2
	.globl _motor_power
	.globl _count
	.globl _result
	.globl _c
	.globl _b
	.globl _a
	.globl _temp
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_temp::
	.ds 1
_a::
	.ds 2
_b::
	.ds 2
_c::
	.ds 2
_result::
	.ds 10
_count::
	.ds 1
_motor_power::
	.ds 2
_display_PARM_2:
	.ds 1
_display_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
	reti
	.ds	7
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
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
;	main.c:23: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:25: TMOD = 0x01;    //timer 0 mode 1
	mov	_TMOD,#0x01
;	main.c:26: TH0 = TH0_5ms;
	mov	_TH0,#0xee
;	main.c:27: TL0 = TL0_5ms;
	mov	_TL0,#0x00
;	main.c:31: IE  = 0b10000010;
	mov	_IE,#0x82
;	main.c:32: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:33: TR0 = 1;    //start timer
;	assignBit
	setb	_TR0
;	main.c:34: count = 0;
;	main.c:35: motor_power = 0;
	clr	a
	mov	_count,a
	mov	_motor_power,a
	mov	(_motor_power + 1),a
;	main.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;max                       Allocated with name '_display_PARM_2'
;min                       Allocated with name '_display_PARM_3'
;cur                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:40: void display(unsigned char cur, unsigned char max, unsigned char min)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r7,dpl
;	main.c:42: LCD_GotoXY(1,0);
	mov	_LCD_GotoXY_PARM_2,#0x00
	mov	dpl,#0x01
	push	ar7
	lcall	_LCD_GotoXY
;	main.c:43: LCD_Write_String("Current: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_Write_String
	pop	ar7
;	main.c:44: LCD_Write_One_Char(cur/10+0x30);
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_Write_One_Char
	pop	ar6
	pop	ar7
;	main.c:45: LCD_Write_One_Char(cur%10+0x30);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_LCD_Write_One_Char
;	main.c:46: LCD_Write_One_Char(223);            //degree character on LCD
	mov	dpl,#0xdf
	lcall	_LCD_Write_One_Char
;	main.c:47: LCD_Write_One_Char('C');
	mov	dpl,#0x43
	lcall	_LCD_Write_One_Char
;	main.c:51: LCD_GotoXY(2,0);
	mov	_LCD_GotoXY_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_LCD_GotoXY
;	main.c:52: LCD_Write_String("Max:");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_Write_String
;	main.c:53: LCD_Write_One_Char(max/10+0x30);
	mov	r6,_display_PARM_2
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_Write_One_Char
	pop	ar6
	pop	ar7
;	main.c:54: LCD_Write_One_Char(max%10+0x30);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_LCD_Write_One_Char
;	main.c:55: LCD_Write_One_Char(223);            //degree character on LCD
	mov	dpl,#0xdf
	lcall	_LCD_Write_One_Char
;	main.c:56: LCD_Write_String("C Min:");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_LCD_Write_String
;	main.c:57: LCD_Write_One_Char(min/10+0x30);
	mov	r6,_display_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_Write_One_Char
	pop	ar6
	pop	ar7
;	main.c:58: LCD_Write_One_Char(min%10+0x30);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_LCD_Write_One_Char
;	main.c:59: LCD_Write_One_Char(223);            //degree character on LCD
	mov	dpl,#0xdf
	lcall	_LCD_Write_One_Char
;	main.c:60: LCD_Write_String("C");
	mov	dptr,#___str_3
	mov	b,#0x80
;	main.c:61: }
	ljmp	_LCD_Write_String
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;max_temp                  Allocated to registers r7 
;min_temp                  Allocated to registers r6 
;------------------------------------------------------------
;	main.c:63: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:67: Init_DS18B20();
	lcall	_Init_DS18B20
;	main.c:68: LCD_init();
	lcall	_LCD_init
;	main.c:69: Timer_Init();
	lcall	_Timer_Init
;	main.c:71: unsigned char max_temp = 0;
	mov	r7,#0x00
;	main.c:72: unsigned char min_temp = 255;
	mov	r6,#0xff
;	main.c:74: while(1){
00112$:
;	main.c:78: ET0 = 0;
;	assignBit
	clr	_ET0
;	main.c:80: temp = ReadTemperature();
	push	ar7
	push	ar6
	lcall	_ReadTemperature
	mov	_temp,dpl
	pop	ar6
	pop	ar7
;	main.c:81: ET1 = 1;
;	assignBit
	setb	_ET1
;	main.c:82: if(temp<20){
	mov	a,#0x100 - 0x14
	add	a,_temp
	jc	00105$
;	main.c:83: motor_power = 5;
	mov	_motor_power,#0x05
	mov	(_motor_power + 1),#0x00
	sjmp	00106$
00105$:
;	main.c:85: else if (temp < 30)
	mov	a,#0x100 - 0x1e
	add	a,_temp
	jc	00102$
;	main.c:86: motor_power = 10;
	mov	_motor_power,#0x0a
	mov	(_motor_power + 1),#0x00
	sjmp	00106$
00102$:
;	main.c:88: motor_power = 15;
	mov	_motor_power,#0x0f
	mov	(_motor_power + 1),#0x00
00106$:
;	main.c:89: if (max_temp < temp)
	clr	c
	mov	a,r7
	subb	a,_temp
	jnc	00108$
;	main.c:90: max_temp = temp;
	mov	r7,_temp
00108$:
;	main.c:91: if (min_temp > temp)
	clr	c
	mov	a,_temp
	subb	a,r6
	jnc	00110$
;	main.c:92: min_temp = temp;
	mov	r6,_temp
00110$:
;	main.c:93: display(temp, max_temp, min_temp);
	mov	_display_PARM_2,r7
	mov	_display_PARM_3,r6
	mov	dpl,_temp
	push	ar7
	push	ar6
	lcall	_display
;	main.c:94: Delay_ms(100);
	mov	dptr,#0x0064
	lcall	_Delay_ms
	pop	ar6
	pop	ar7
;	main.c:103: }
	sjmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_ISR'
;------------------------------------------------------------
;	main.c:104: void TIMER0_ISR() __interrupt TF0_VECTOR
;	-----------------------------------------
;	 function TIMER0_ISR
;	-----------------------------------------
_TIMER0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:106: TH0 = TH0_5ms;
	mov	_TH0,#0xee
;	main.c:107: TL0 = TL0_5ms;
	mov	_TL0,#0x00
;	main.c:111: count++;
	inc	_count
;	main.c:112: if (count == 20)
	mov	a,#0x14
	cjne	a,_count,00102$
;	main.c:114: count = 0;
	mov	_count,#0x00
00102$:
;	main.c:116: if (count < motor_power)
	mov	r6,_count
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,_motor_power
	mov	a,r7
	subb	a,(_motor_power + 1)
	jnc	00104$
;	main.c:117: MOTOR = 1;
;	assignBit
	setb	_P1_0
	sjmp	00106$
00104$:
;	main.c:119: MOTOR = 0;
;	assignBit
	clr	_P1_0
00106$:
;	main.c:120: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Current: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Max:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "C Min:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "C"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
