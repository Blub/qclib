QCC=../fteqcc.bin
QCFLAGS ?=

all:
	$(QCC) -Fwasm $(QCFLAGS)
	-rm *.lno *.dat *.log
	@less qc.asm
	-rm qc.asm

checkpassed:
	$(QCC) -Fwasm $(QCFLAGS)
	-rm *.lno *.dat *.log
	-mv qc.asm check.asm

check:
	@$(QCC) -Fwasm $(QCFLAGS)
	@rm *.lno *.dat *.log
	@sh -c "if diff qc.asm check.asm; then echo check passed; exit 0; else echo check failed; exit 1; fi"
	@rm qc.asm

comp:
	$(QCC) $(QCFLAGS)
	-rm *.lno *.dat *.log

asm:
	$(QCC) -Fwasm $(QCFLAGS)
	-rm *.lno *.dat *.log
