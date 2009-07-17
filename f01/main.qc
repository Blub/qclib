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

	// the dummy function helps finding the individual cases in the asm output
	dummy(1);
	x\xzy = 3; // works
	dummy(2);
	x\xyz = y\zxx; // works
	dummy(3);
	x\x = whatever(128)\y; // works
	dummy(4);
	f = (x + y)\y; // works
	dummy(5);
	x\zyx\yzy = 3; // works and prints the correct warning
	dummy(6);
	x\xzo = 3; // those 2 work, too
	x\y = 9;
	dummy(7);
	x\xz = y\zx; // works
	dummy(8);
	x\xy = x\yx; // works, uses a temp to do real swapping
	dummy(9);
	x = whatever(32)\zxx; // works
	return 99;
}
