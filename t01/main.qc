float cvar(string x) = #1;

float f(...) = #2;

float A = 1;
float B = 2;
float C = 3;

float test()
{
	return f(0, A * -cvar("test") + B, 2);
}

/* Description:
   Wanted:             A * (-cvar(test)) + B
   Compiled code does: A * -( cvar(test)+B )

   Probably due to wrong priority parameter to QCC_PR_Expression()?
 */
