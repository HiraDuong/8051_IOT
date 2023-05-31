#include <mcs51/8051.h>

#define LED7SEG_DATA    P0
#define IR_NEC          P3_2
#define LED_PIN1        P2_7

int k;
int count = 0;
int duration;
int bit_arr[32];
int bit_count = 0;

 


void Delay_ms(int interval)
{
    int i,j;
    for(i=0;i<1000;i++)
    {
        for(j=0;j<interval;j++);
    }
}

 

void main(void)
{
   TMOD = 0x01;  // Timer0 MODE1
    TH0 = 0xFF;   //timer value = 0.25ms
    TL0 = 0x1A;
    TR0 = 1;       // Start the Timer
    ET0 = 1;       // Enable the Timer0 Interrupt

    IT0 = 1;       // Configure INT0 falling edge interrupt
    EX0 = 1;       // Enable the INT0 External Interrupt
    EA  = 1;       // Enable the Global Interrupt bit

 

    while(1)
    {
        P2_7 = !bit_arr[31]
        P2_6 = !bit_arr[30]
        P2_5 = !bit_arr[29]
        P2_4 = !bit_arr[28]
        P2_3 = !bit_arr[27]
        P2_2 = !bit_arr[26]
        P2_1 = !bit_arr[25]
        P2_0 = !bit_arr[24]

    }
}

 

void TIMER0_ISR() __interrupt TF0_VECTOR
{
    count++;
    TH0 = 0xFF // Tạo timer với chu kì 0.25ms
    TL0 = 0x1A
}

 

void EX0_ISR() __interrupt IE0_VECTOR
{
    duration = count;
    count = 0;

    TH0 = 0xFF;
    TL0 = 0x1A;

    bit_count ++;

    if (duration >= 50){
        bit_count = -2 // Skip start
    }
    else if (bit_count >=0 && bit_count<32){
        if(duration >=7){
            bit_arr[bit_count] = 1;// logic 1
        }
        else {
            bit_arr[bit_count] = 0; // logic 0
        }
    }
    else if (bit_count >= 32){
        bit_count = 0; // reset để nhận command mới
    }
}
