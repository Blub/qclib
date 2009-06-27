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
   Unary operators parse full expressions but should only allow a single statement.

   Applies to -X, +A, !A ... (all of them)
   Changed NOT_PRIORITY from 5 to 1 
*/

float test_for_fix_1()
{
	return A * !!test() + C; // must warn about parentheses
}

float test_for_fix_2()
{
	return A * !!test() * B + C; // must warn about parentheses
}

entity self;
.float evar;

float test_for_fox_3()
{
	return A * -self.evar + B;
}
