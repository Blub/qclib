float an_array;
void () test;
void() test = asm
{
local float temp_0;
	GLOBALADDRESS	an_array,	3,	temp_0;
	STOREP_F	5.000000,	temp_0;
	DONE;
}

