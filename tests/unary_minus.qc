vector vec3(float, float, float) = #3;

float test()
{
	local float a, b, c, f;
	local vector v, w;
	v = -w;
	f = a * -b + c; // must not become a * -(b + c)
	return 0;
}
