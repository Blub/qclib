entity self;
.float value;
void () test;
void() test = asm
{
local POINTER TYPE p;
local float temp_0;
	ADDRESS	self,	value,	p;
	DONE;
}

