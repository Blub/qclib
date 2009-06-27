float cvar(string x) = #1;

float f(...) = #2;

var float A = 1;
var float B = 2;
var float C = 3;

float test()
{
	return A * -(B + C);
}

float test2()
{
	return A * -B + C;
}

/* Description:
   Wanted:             A * (-B) + C
   Compiled code does: A * -( B+C )

   test() and test2() generate the same code

   Probably due to wrong priority parameter to QCC_PR_Expression()?

   Result:
   Unary operators parse full expressions but should call QCC_PR_Temp() (like prefix operators do)

   Applies to -X, +A, !A
   Fixed those 3, dunno about stuff like &X
 */
