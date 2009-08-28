int () test;
int() test = asm
{
local float bitf;
local int bit;
local int flags;
local float temp_0;
	BITOR_IF	flags,	1.000000,	temp_0;
	STORE_I	temp_0,	flags;
	STORE_IF	4.000000,	bit;
	BITOR_I	flags,	bit,	temp_0;
	STORE_I	temp_0,	flags;
	BITOR_I	flags,	3,	flags;
	BITOR_I	flags,	bit,	flags;
	C_FTOI	bitf,	temp_0;
	BITOR_I	flags,	temp_0,	flags;
	RETURN	0;
}

