#include <stdint.h>

#define TMP_SIZE 4
uint8_t tmp[4];

void just_init()
	{
		uint8_t i = TMP_SIZE;
		do
			{
				i--;
				tmp[i]=0;
			}
		while(i);
	}




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

uint8_t diff(uint8_t a, uint8_t b)
	{
		b = ~b;
		b = summ(b,1);
		return summ(a,b);
		
	}



void do_work()
{
	
	
	
}




#include <stdio.h>
int main()
{
	uint8_t a = 1, b= 3;
	
	
	printf("%d\t%d\n",(uint8_t)(a-b),diff(a,b));
}



