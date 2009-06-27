float cvar(string x) = #1;

float f(float x, float y, float z)
{
	return x+y+z;
}

float test()
{
	return f(0, 2*-cvar("test"), 2);
}
