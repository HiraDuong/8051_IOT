#ifndef MOTOR_H_INCLUDED
#define MOTOR_H_INCLUDED
#include <mcs51/8052.h>
#include "lcd1602.h"
#include "DS18B20.H"

#define MOTOR           P1_0
#define TH0_5ms         0xEE
#define TL0_5ms         0x00



unsigned char count;
unsigned motor_power;

void Timer_Init();
void display(unsigned char cur, unsigned char max, unsigned char min);




#endif
