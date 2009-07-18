vector vec3(float, float, float) = #3;
float f(...) = #1;

float test()
{
	return f(3) ? 4 : 5;
}
