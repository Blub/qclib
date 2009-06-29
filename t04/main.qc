float f(...);

float test1()
{
	return f(3) ? 4 : 5;
}

float test2()
{
	return (f(3) ? 4 : 5);
}

/* Description:
   After parsing f(3), the priority-1 QCC_PR_Expression returns instead of
   passing the return value on in `e`.

   Fix: Stay consistent with the rest of the behaviour.
 */
