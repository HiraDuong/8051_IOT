#ifndef DS18B20_H_INCLUDED
#define DS18B20_H_INCLUDED

void delay_us_DS18B20(unsigned char t);
void Init_DS18B20();
unsigned char ReadByteFromScratchpad();
void WriteByteToScratchpad(unsigned char byte);
unsigned char ReadTemperature();


#endif
