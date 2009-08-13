vector (float, float, float) vec3;
float () test;
float() test = asm
{
local vector x;
	STORE_F	3.000000,	x_x;
	STORE_F	3.000000,	x_z;
	STORE_F	3.000000,	x_y;
	RETURN	0.000000;
}

