void () test;
void() test = asm
{
local float f;
local vector v;
	MUL_VF	v,	f,	v;
	DONE;
}

