vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector x;
local float f;
local vector temp_0;
	STORE_F	3.000000,	temp_0_x;
	STORE_F	4.000000,	temp_0_y;
	STORE_F	f,	temp_0_z;
	STORE_V	temp_0,	x;
	RETURN	0.000000;
	DONE;
}

