void (string, float, int) setf;
void(string c, float idx, int val) setf = asm
{
local float temp_0;
local float temp_1;
	ADD_SF	c,	idx,	temp_1;
	C_ITOF	val,	temp_0;
	STOREP_C	temp_0,	temp_1;
	DONE;
}

float (string, float) getf;
float(string c, float idx) getf = asm
{
local float temp_0;
	LOADP_C	c,	idx,	temp_0;
	RETURN	temp_0;
}

float (string, int) get;
float(string c, int idx) get = asm
{
local float temp_0;
	C_ITOF	idx,	temp_0;
	LOADP_C	c,	temp_0,	temp_0;
	RETURN	temp_0;
}

