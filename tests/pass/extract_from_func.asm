vector (float, float, float) vec3;
vector () v;
float () test;
float() test = asm
{
local vector y;
local vector x;
	CALL0		v;
	STORE_F	return_z,	x_x;
	STORE_F	return_x,	x_z;
	STORE_F	return_x,	x_y;
	RETURN	0.000000;
}

