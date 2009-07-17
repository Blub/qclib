// __VARINFO is an intrinsic I added to print some info
// about the passed parameter.
void __VARINFO() = #1;

vector whatever(float x)
{
	vector a;
	a = '2 0 2';
	a\y = x;
	return a;
}

float test()
{
	local vector x;
	local vector y;
	x = '3 4 3';
	y = '1 1 0';

	return whatever(128)\y;
	x\xyz = y\zyx;
	x\xy = x\yx;
	x\xyz = x\zyx;

	x = x\zyx + y\yzx;
	x = x\yzx * 3;

	return 3;
	x = x .* y;
	x\yxo = 9;
	return 3;
}
