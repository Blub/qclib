// __VARINFO is an intrinsic I added to print some info
// about the passed parameter.
void __VARINFO();

vector whatever(float x)
{
	vector a;
	a = '2 0 2';
	a.y = x;
	return a;
}

float test()
{
	local vector x;
	local vector y;
	x = '3 4 3';
	y = '1 1 0';

	__VARINFO(x + y);
	__VARINFO(x + y);
	__VARINFO((x + y).y);
	__VARINFO(x);
	__VARINFO(x_z);
	__VARINFO(x.z);
	
	return x.z;
}
