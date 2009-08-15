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
local vector temp_0;
local float temp_1;
local float temp_2;
	INDIRECT_F	self,	mvar,	temp_2;
	GE		temp_2,	0.000000,	temp_2;
	IFNOT		temp_2,	9;
	INDIRECT_F	self,	mbool,	temp_2;
	IFNOT		temp_2,	3;
	STORE_F	0.500000,	temp_2;
	GOTO		3;
	MUL_F		C,	2.000000,	temp_1;
	ADD_F		temp_1,	1.000000,	temp_2;
	MUL_F		B,	x,	parm2_x;
	CALL3H	f,	A,	temp_2;
	RETURN	0.000000;
}

