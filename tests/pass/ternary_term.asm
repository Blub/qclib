vector (float, float, float) vec3;
float () f;
float () test;
float() test = asm
{
local float temp_0;
	STORE_F	3.000000,	parm0_x;
	CALL1		f;
	IFNOT		return_x,	3;
	STORE_F	4.000000,	temp_0;
	GOTO		2;
	STORE_F	5.000000,	temp_0;
	RETURN	temp_0;
	DONE;
}

