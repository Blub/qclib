vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector y;
local vector x;
	STORE_F	y_z,	x_x;
	STORE_F	y_x,	x_z;
	STORE_F	y_x,	x_y;
	RETURN	0.000000;
	DONE;
}

