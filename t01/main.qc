float cvar(string x) = #1;

float f(float x, float y, float z)
{
	return x+y+z;
}

float test()
{
	return -cvar("test");
}
