vector vec3(float, float, float) = #3;

float test()
{
	local vector x, y;
	x\xy = x\yx; // using a temp
	x\xy = y\yx; // without a temp
	return 0;
}
