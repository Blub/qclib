entity self;
.float value;
.float ptr;
void (vector, vector, POINTER TYPE) vecadd;
void(vector a, vector b, POINTER TYPE c) vecadd = asm
{
local vector temp_0;
local vector temp_1;
	ADD_I		c,	offset_0,	temp_1_x;
	ADD_V		a,	b,	temp_0;
	STOREP_V	temp_0_x,	temp_1;
	DONE;
}

void (vector, vector, POINTER TYPE) vecadd2;
void(vector a, vector b, POINTER TYPE c) vecadd2 = asm
{
local float temp_0;
local vector temp_1;
local vector temp_2;
	C_FTOI	0.000000,	temp_0;
	ADD_I		c,	temp_0,	temp_1_x;
	ADD_V		a,	b,	temp_2;
	STOREP_V	temp_2_x,	temp_1;
	DONE;
}

