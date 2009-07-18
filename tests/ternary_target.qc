vector vec3(float, float, float) = #3;
float f(...) = #1;
.float mvar;
.float mbool;
var float A, B, C;
entity self;

float test()
{
	local float x;
	if(self.mvar >= 0)
	{
		f(A, (self.mbool ? 0.5 : (C*2+1)), B*x);
	}
	return 0;
}
