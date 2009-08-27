float () test;
float() test = asm
{
local float f;
local POINTER TYPE ptr;
local float temp_0;
	LOADP_I	ptr,	offset_0,	temp_0;
	STORE_FI	temp_0,	f;
	RETURN	0.000000;
}

