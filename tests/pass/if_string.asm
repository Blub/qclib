float (string) test;
float(string s) test = asm
{
	IFNOTS	s,	2;
	RETURN	1.000000;
	RETURN	0.000000;
}

