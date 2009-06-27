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
		f(A, (self.mbool ? 0.5 : 0), B*x);
		f(A, self.mbool ? 0.5 : 0, B*x, C*x);
	}
	return 1;
}

/*
  Description:
  0.5, 0 and B*x nevers get written to parm2 (when not using brackets for the (?:) construct)
  because the syntax defines B*x, and C*x as part of (?:this).
  It reads: f(A, (self.mbool ? 0.5 : 0, B*x, C*x)) which is only 2 params.

  This is not a bug.
 */
