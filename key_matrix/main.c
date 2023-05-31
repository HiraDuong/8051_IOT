/*
 */

#include <mcs51/8051.h>
#include "lcd1602.h"
int keypressed = 0;
int key ;
void delay(int time){
    for(int i = 0;i<time*10000;i++){

    }
}
void keyscan()

{

    keypressed = 0;

    P1=0xfe;

    if(P1!=0xfe)

    {

        delay(1000);

        if(P1!=0xfe)

        {

  key=P1&0xf0;

  switch(key)

  {
    case 0x70 :
        {   LCD_Send_Command(0x01); //Xoa man hinh
            LCD_Write_String("04");
            break;
        }
        //find the key pressed here
    case 0xB0 :
        {   LCD_Send_Command(0x01); //Xoa man hinh
            LCD_Write_String("08");
            break;
        }
    case 0xD0 :
        {   LCD_Send_Command(0x01); //Xoa man hinh
            LCD_Write_String("12");
            break;
        }
    case 0xE0 :
        {   LCD_Send_Command(0x01); //Xoa man hinh
            LCD_Write_String("16");
            break;
        }
    default:
        break;

  }

        }

        while(P1!=0xfe);

        //process key here if needed

        keypressed = 1;

    }



    //other keys

}

void main(void)
{
    char key_char[3];
    LCD_init();


    while(1){
        keyscan();
    }
        ;

}
