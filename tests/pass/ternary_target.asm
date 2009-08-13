vector (float, float, float) vec3;
float () f;
.float mvar;
.float mbool;
float A;
float B;
float C;
entity self;
float () test;
float() test = asm
{
local float x;
local float temp_0;
local float temp_1;
	INDIRECT_F	self,	mvar,	temp_1;
	GE		temp_1,	0.000000,	temp_1;
	NOT_F		temp_1,	temp_1;
	IF		temp_1,	13;
	INDIRECT_F	self,	mbool,	temp_1;
	NOT_F		temp_1,	temp_1;
	IF		temp_1,	3;
	STORE_F	0.500000,	temp_1;
	GOTO		3;
	MUL_F		C,	2.000000,	temp_0;
	ADD_F		temp_0,	1.000000,	temp_1;
	MUL_F		B,	x,	temp_0;
	STORE_F	A,	parm0_x;
	STORE_F	temp_1,	parm1_x;
	STORE_F	temp_0,	parm2_x;
	CALL3		f;
	RETURN	0.000000;
	DONE;
}

