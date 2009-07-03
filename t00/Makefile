QCC=../fteqcc.bin
QCFLAGS ?=

all:
	$(QCC) -Fwasm $(QCFLAGS)
	-rm *.lno *.dat *.log
	@less qc.asm
	-rm qc.asm

comp:
	$(QCC)
	-rm *.lno *.dat *.log
