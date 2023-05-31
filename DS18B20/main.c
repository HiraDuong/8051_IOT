/*
 */

#include <mcs51/8051.h>
#include "ds18b20.h"
#include"lcd1602.h"
#include<stdio.h>

unsigned char temp ;
int a,b,c;
char result[10];
#define MOTOR           P1_0
#define TH0_5ms         0xEE
#define TL0_5ms         0x00



unsigned char count;
unsigned motor_power;



void Timer_Init()
{
    TMOD = 0x01;    //timer 0 mode 1
    TH0 = TH0_5ms;
    TL0 = TL0_5ms;



    IE  = 0b10000010;
    TF0 = 0;
    TR0 = 1;    //start timer
    count = 0;
    motor_power = 0;
}



void display(unsigned char cur, unsigned char max, unsigned char min)
{
    LCD_GotoXY(1,0);
    LCD_Write_String("Current: ");
    LCD_Write_One_Char(cur/10+0x30);
    LCD_Write_One_Char(cur%10+0x30);
    LCD_Write_One_Char(223);            //degree character on LCD
    LCD_Write_One_Char('C');



    LCD_GotoXY(2,0);
    LCD_Write_String("Max:");
    LCD_Write_One_Char(max/10+0x30);
    LCD_Write_One_Char(max%10+0x30);
    LCD_Write_One_Char(223);            //degree character on LCD
    LCD_Write_String("C Min:");
    LCD_Write_One_Char(min/10+0x30);
    LCD_Write_One_Char(min%10+0x30);
    LCD_Write_One_Char(223);            //degree character on LCD
    LCD_Write_String("C");
}

void main(void)
{


    Init_DS18B20();
	LCD_init();
    Timer_Init();
    //unsigned char cur_temp;
    unsigned char max_temp = 0;
    unsigned char min_temp = 255;

    while(1){
        // Hiển thị nhiệt độ

        //LCD_Send_Command(0x80); //Chuyen con tro xuong dong thu 2
        ET0 = 0;

        temp = ReadTemperature();
        ET1 = 1;
        if(temp<20){
            motor_power = 5;
        }
        else if (temp < 30)
            motor_power = 10;
        else
            motor_power = 15;
         if (max_temp < temp)
            max_temp = temp;
        if (min_temp > temp)
            min_temp = temp;
        display(temp, max_temp, min_temp);
        Delay_ms(100);
        //a = temp/10;
        //b = temp %10;
        //c = a*10 + b;
        //sprintf(result, "%d", c); // Convert the integer to a string
        //LCD_Write_String(result);


    }
}
void TIMER0_ISR() __interrupt TF0_VECTOR
{
    TH0 = TH0_5ms;
    TL0 = TL0_5ms;



    count++;
    if (count == 20)
    {
        count = 0;
    }
    if (count < motor_power)
        MOTOR = 1;
    else
        MOTOR = 0;
}
