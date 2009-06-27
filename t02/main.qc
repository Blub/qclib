entity self;
.float mbool;
.float mvar;
.float mvar2;
.float mvar3;

float A = 1;
float B = 2;
float C = 3;
float DEG2RAD = 0.01745329252;

float f(float x, float y, float z,
	float a, float b, float c,
	float n,
	float P, float Q, float R)
{
	return x+y+z;
}

float test()
{
	local float rot;
	local float x;
	local float y;
	x = y = rot = 3;
	rot *= x;
	x *= y;
	y *= x;

	if(self.mvar3 >= 0)
	{
		f(rot * 90 * DEG2RAD,
		  self.mvar,
		  A * x * y,
		  A, B, C,
		  (self.mbool ? 0.5 : 0),
		  self.mvar2,
		  self.mvar3,
		  x * C);
	}
	return 1;
}
