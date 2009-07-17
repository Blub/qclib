// __VARINFO is an intrinsic I added to print some info
// about the passed parameter.
void __VARINFO() = #1;
void dummy(...) = #2;

vector whatever(float x)
{
	vector a;
	a = '2 0 2';
	a\y = x;
	return a;
}

float test()
{
	local float f;
	local vector x;
	local vector y;
	x = '3 4 3';
	y = '1 1 0';

	dummy(1);
	x\xzy = 3; // works
	dummy(2);
	x\xyz = y\zxx; // works
	dummy(3);
	x\x = whatever(128)\y;
	dummy(4);
	f = (x + y)\y;
	dummy(5);
	x\zyx\yzy = 3;
	return 99;
}
