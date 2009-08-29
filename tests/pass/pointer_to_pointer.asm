entity self;
.float value;
POINTER TYPE p;
POINTER TYPE v;
void () assign;
void() assign = asm
{
local float temp_0;
	ADDRESS	self,	value,	v;
	GLOBALADDRESS	v,	offset_0,	p;
	DONE;
}

floatptr () deref_once;
floatptr() deref_once = asm
{
local float temp_0;
	LOADP_I	p,	offset_0,	temp_0;
	RETURN	temp_0;
}

float () deref_twice;
float() deref_twice = asm
{
local float temp_0;
	LOADP_I	p,	offset_0,	temp_0;
	LOADP_F	temp_0,	offset_0,	temp_0;
	RETURN	temp_0;
}

float () deref_index;
float() deref_index = asm
{
local float temp_0;
	LOADP_I	p,	1,	temp_0;
	LOADP_F	temp_0,	offset_0,	temp_0;
	RETURN	temp_0;
}

float () index_twice;
float() index_twice = asm
{
local float temp_0;
	LOADP_I	p,	1,	temp_0;
	LOADP_F	temp_0,	1,	temp_0;
	RETURN	temp_0;
}

float () evil_stuff;
float() evil_stuff = asm
{
local float temp_0;
	LOADP_F	v,	1,	temp_0;
	RETURN	temp_0;
}

