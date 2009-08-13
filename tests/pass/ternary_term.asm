vector (float, float, float) vec3;
float () f;
float () test;
float() test = asm
{
local float temp_0;
	STORE_F	3.000000,	parm0_x;
	CALL1		f;
	NOT_F		return_x,	temp_0;
	IF		temp_0,	3;
	STORE_F	4.000000,	temp_0;
	RETURN	temp_0;
	STORE_F	5.000000,	temp_0;
	RETURN	temp_0;
}

