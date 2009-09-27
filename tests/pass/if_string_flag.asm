float (string) test;
string string_null;
float(string s) test = asm
{
local float temp_0;
	NE_S		s,	string_null,	temp_0;
	IFNOT		temp_0,	2;
	RETURN	1.000000;
	RETURN	0.000000;
	DONE;
}

