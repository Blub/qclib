float () chunk;
float () test;
float() test = asm
{
local string s;
local int i;
local float f;
local float temp_0;
	AND_FI	f,	i,	temp_0;
	CALL0		chunk;
	AND_FI	f,	s,	temp_0;
	CALL0		chunk;
	AND_I		i,	s,	temp_0;
	CALL0		chunk;
	OR_FI		f,	i,	temp_0;
	CALL0		chunk;
	OR_FI		f,	s,	temp_0;
	CALL0		chunk;
	OR_I		i,	s,	temp_0;
	CALL0		chunk;
	AND_IF	i,	f,	temp_0;
	CALL0		chunk;
	AND_IF	s,	f,	temp_0;
	CALL0		chunk;
	AND_I		s,	i,	temp_0;
	CALL0		chunk;
	OR_IF		i,	f,	temp_0;
	CALL0		chunk;
	OR_IF		s,	f,	temp_0;
	CALL0		chunk;
	OR_I		s,	i,	temp_0;
	CALL0		chunk;
	RETURN	0.000000;
}

