vector (float, float, float) vec3;
vector () test;
vector() test = asm
{
local vector y;
local vector x;
local vector temp_0;
	MUL_F		x_x,	y_x,	temp_0_x;
	MUL_F		x_y,	y_y,	temp_0_y;
	MUL_F		x_z,	y_z,	temp_0_z;
	RETURN	temp_0_x;
}

