entity self;
.float mbool;

float f(float x, float y, float z)
{
	return x+y+z;
}

float test()
{
	f(0, (self.mbool ? 0.5 : 0), 1);
	return 1;
}
