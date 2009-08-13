vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector w;
local vector v;
local float f;
local float c;
local float b;
local float a;
local float temp_0;
local vector temp_1;
	SUB_V		'0.000000 0.000000 0.000000',	w,	v;
	SUB_F		0.000000,	b,	temp_0;
	MUL_F		a,	temp_0,	temp_0;
	ADD_F		temp_0,	c,	f;
	RETURN	0.000000;
}

