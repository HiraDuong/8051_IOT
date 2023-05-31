/* Interfacing with DS18B20 */



#include <mcs51/8052.h>
#include "lcd1602.h"
#include "DS18B20.H"
#include"motor.h"






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



