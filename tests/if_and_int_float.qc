float chunk() = #1;

float test()
{
	float f;
	int i;
	string s;

	f && i; chunk();
	f && s; chunk();
	i && s; chunk();
	f || i; chunk();
	f || s; chunk();
	i || s; chunk();
	i && f; chunk();
	(s && f); chunk();
	(s && i); chunk();
	i || f; chunk();
	(s || f); chunk();
	(s || i); chunk();

	return 0;
}
