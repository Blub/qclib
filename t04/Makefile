QCC=../fteqcc.bin

all:
	$(QCC) -Fwasm
	-rm *.lno *.dat *.log
	@less qc.asm
	-rm qc.asm

comp:
	$(QCC)
	-rm *.lno *.dat *.log
