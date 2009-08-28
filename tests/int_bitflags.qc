int test()
{
	int flags;
	int bit;
	float bitf;

	flags = flags | 1;
	bit = 4;
	flags = flags | bit;
	flags |= ~3;
	flags |= bit;
	flags |= (int)bitf;

	// optimized out conversion
	// previously needed to be: return ~0;
	return 0;
}
