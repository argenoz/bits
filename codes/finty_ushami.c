#include <stdint.h>

//Сумма двух чисел
uint8_t summ(uint8_t a, uint8_t b)
	{
		uint8_t c,d;
		do
			{
				c = ((a&b)<<1);
				d = a^b;
				if(c)
					{
						a = c;
						b = d;
						continue;
					}
				else
					{
						return d;
					}
			}
		while(1);
	}
//Нахождение обратного по сложению восьмибитного числа
uint8_t neg(uint8_t b)
	{
		b = ~b;
		b = summ(b,1);
                return b;
	}
//Разность двух восьмибитных чисел
uint8_t diff(uint8_t a, uint8_t b)
	{
		b = neg(a);
		return summ(a,b);
		
	}

//Инверсия восьмиюитного числа
uint8_t invert(uint8_t a)
	{
		a = (((a&SWAP8_4_4_1)<<4)|((a&SWAP8_4_4_2)>>4));
		a = (((a&SWAP8_2_2_1)<<2)|((a&SWAP8_2_2_2)>>2));
		a = (((a&SWAP8_1_1_1)<<1)|((a&SWAP8_1_1_2)>>1));
		return a;
	}

