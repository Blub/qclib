vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector y;
local vector x;
local float temp_0;
	STORE_F	x_x,	temp_0;
	STORE_F	x_y,	x_x;
	STORE_F	temp_0,	x_y;
	STORE_F	y_y,	x_x;
	STORE_F	y_x,	x_y;
	RETURN	0.000000;
}

