void () __VARINFO;
void () dummy;
vector (float, float, float) vec3;
vector (float) whatever;
vector(float x) whatever = asm
{
local vector a;
	STORE_V	'2.000000 0.000000 2.000000',	a;
	STORE_F	x,	a_y;
	RETURN	a_x;
	DONE;
}

float () test;
float() test = asm
{
local vector y;
local vector x;
local float f;
local float temp_0;
local vector temp_1;
	STORE_V	'3.000000 4.000000 3.000000',	x;
	STORE_V	'1.000000 1.000000 0.000000',	y;
	STORE_F	1.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	3.000000,	x_x;
	STORE_F	3.000000,	x_z;
	STORE_F	3.000000,	x_y;
	STORE_F	2.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	y_z,	x_x;
	STORE_F	y_x,	x_y;
	STORE_F	y_x,	x_z;
	STORE_F	3.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	128.000000,	parm0_x;
	CALL1		whatever;
	STORE_F	return_y,	x_x;
	STORE_F	4.000000,	parm0_x;
	CALL1		dummy;
	ADD_V		x,	y,	temp_1;
	STORE_F	temp_1_y,	f;
	STORE_F	5.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	3.000000,	x_y;
	STORE_F	3.000000,	x_x;
	STORE_F	3.000000,	x_y;
	STORE_F	6.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	3.000000,	x_x;
	STORE_F	3.000000,	x_z;
	STORE_F	9.000000,	x_y;
	STORE_F	7.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	y_z,	x_x;
	STORE_F	y_x,	x_z;
	STORE_F	8.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	x_x,	temp_0;
	STORE_F	x_y,	x_x;
	STORE_F	temp_0,	x_y;
	STORE_F	9.000000,	parm0_x;
	CALL1		dummy;
	STORE_F	32.000000,	parm0_x;
	CALL1		whatever;
	STORE_F	return_z,	x_x;
	STORE_F	return_x,	x_y;
	STORE_F	return_x,	x_z;
	STORE_F	10.000000,	parm0_x;
	CALL1		dummy;
	STORE_V	'3.000000 4.000000 5.000000',	x;
	RETURN	99.000000;
	DONE;
}

