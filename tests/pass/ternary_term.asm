vector (float, float, float) vec3;
float () f;
float () test;
float() test = asm
{
local float temp_0;
	CALL1H	f,	3.000000;
	IFNOT		return_x,	3;
	STORE_F	4.000000,	temp_0;
	RETURN	temp_0;
	STORE_F	5.000000,	temp_0;
	RETURN	temp_0;
}

