#include <stdint.h>

#define TMP_SIZE 6
uint8_t tmp[TMP_SIZE];





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

uint8_t neg(uint8_t b)
	{
		b = ~b;
		b = summ(b,1);
                return b;
	}

uint8_t diff(uint8_t a, uint8_t b)
	{
		b = neg(b);
		return summ(a,b);
		
	}





#define SWAP8_4_4_1 0x0f
#define SWAP8_4_4_2 0xf0

#define SWAP8_2_2_1 0x33
#define SWAP8_2_2_2 0xcc

#define SWAP8_1_1_1 0x55
#define SWAP8_1_1_2 0xaa


uint8_t invert(uint8_t a)
	{
		a = (((a&SWAP8_4_4_1)<<4)|((a&SWAP8_4_4_2)>>4));
		a = (((a&SWAP8_2_2_1)<<2)|((a&SWAP8_2_2_2)>>2));
		a = (((a&SWAP8_1_1_1)<<1)|((a&SWAP8_1_1_2)>>1));
		return a;
	}


// a , b , a+b , a-b, -b , inv(a)
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


void setA1()
	{
		tmp[0] = ((tmp[0]<<1)|1);
	}

void setA0()
	{
		tmp[0] = ((tmp[0]<<1));
	}

void setB1()
	{
		tmp[1] = ((tmp[1]<<1)|1);
	}

void setB0()
	{
		tmp[1] = ((tmp[1]<<1));
	}


extern void inputA();
extern void inputB();


uint8_t invert(uint8_t a);
void input()
{
	just_init();
	inputA();
	inputB();
}

extern void output1();
extern void output0();

extern void prepair();
extern void set_summ();
extern void set_diff();
extern void set_neg();
extern void set_inv();


void output(uint8_t a)
	{
		//a = invert(a);
		uint8_t i = 8;
		do
			{
				i--;
				if(a&1)
					output1();
				else
					output0();
				a = a>>1;
			}
		while(i);
		return;
	}




void do_work()
{
	int a,b;
	input();
	a = summ(tmp[0],tmp[1]);
	prepair();
	output(a);
	set_summ();
	a = diff(tmp[0],tmp[1]);
	prepair();
	output(a);
	set_diff();
	a = neg(tmp[0]);
	prepair();
	output(a);
	set_neg();
	a = invert(tmp[0]);
	prepair();
	output(a);
	set_inv();
	return;
}







