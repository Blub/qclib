vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector y;
local vector x;
local float f;
local vector temp_0;
	ADD_V		x,	y,	temp_0;
	STORE_F	temp_0_y,	f;
	RETURN	0.000000;
	DONE;
}

