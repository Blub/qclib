entity self;
.float value;
.float ptr[8];

void vecadd(vector a, vector b, vector *c)
{
	*c = a + b;
}

void vecadd2(vector a, vector b, vector *c)
{
	c[0] = a + b;
}
