entity self;
.float value;

float **p;
float *v;

void assign()
{
	v = &self.value;
	p = &v;
}

typedef float *floatptr;

floatptr deref_once()
{
	return *p;
}
float deref_twice()
{
	return **p;
}

float deref_index()
{
	return *p[1];
}

float index_twice()
{
	return p[1][1];
}

float evil_stuff()
{
	return v[1];
}
