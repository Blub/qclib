float () test;
float() test = asm
{
local float x;
local float temp_0;
	NE_F		x,	0.000000,	temp_0;
	IFNOT		temp_0,	2;
	RETURN	0.000000;
	RETURN	1.000000;
}

