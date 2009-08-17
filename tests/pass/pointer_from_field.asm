entity self;
.float value;
void () test;
void() test = asm
{
local POINTER TYPE p;
local float temp_0;
	ADDRESS	self,	value,	temp_0;
	STORE_P	temp_0,	p;
	DONE;
}

