entity self;
.float mbool;
.float mvar;

float A = 1;
float B = 2;
float C = 3;

float f(...) = #2;

float test()
{
	local float x;
	x = 3;

	if(self.mvar >= 0)
	{
		f(A, self.mbool ? 0.5 : 0, B*x);
	}
	return 1;
}

/*
  Description:
  B*x nevers gets written to parm2 (when not using brackets for the (?:) construct)
 */
