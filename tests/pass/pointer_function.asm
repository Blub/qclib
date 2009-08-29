entity self;
.float value;
.float ptr;
void (vector, vector, POINTER TYPE) vecadd;
void(vector a, vector b, POINTER TYPE c) vecadd = asm
{
local vector temp_0;
local vector temp_1;
	ADD_V		a,	b,	temp_0;
	STOREP_V	temp_0_x,	c;
	DONE;
}

void (vector, vector, POINTER TYPE) vecadd2;
void(vector a, vector b, POINTER TYPE c) vecadd2 = asm
{
local vector temp_0;
local vector temp_1;
	ADD_I		c,	0,	temp_0_x;
	ADD_V		a,	b,	temp_1;
	STOREP_V	temp_1_x,	temp_0;
	DONE;
}

