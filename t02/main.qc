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
		/*
		f(
			(self.mbool ? 0.5 : 0),
			C*x*y
			);
		*/
		f(A, (self.mbool ? 0.5 : 0), B*x);
	}
	return 1;
}

/*
  Description:
  the (?:) is evaluated into temp0
  B*X is evaluated into temp0 too
  A is stored directly into parm0
  then temp0 is stored into parm1 and parm2

  it only happens when an expression is found after the (?:)
  swap B*x and (?:) and no error appears.

  Possible reasons:
  The (?:) code returns a freed tempvar.
 */
