QCC=../fteqcc.bin
QCFLAGS ?=

testsuite = \
	assign_shuf3 \
	assign_shuf2 \
	assign_to_shuf3 \
	assign_to_part \
	assign_from_func \
	extract_from_func \
	extract_from_term \
	multi_shuffle_33 \
	multi_shuffle_21 \
	shuf2_swap \
	vec3_intrinsic

all: $(patsubst %,check-%,$(testsuite))

passall: $(patsubst %,pass/%.asm,$(testsuite))

%.asm: %.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS) >/dev/null
	@rm *.lno *.dat *.log progs.src
	@mv qc.asm $@

pass/%.asm: %.asm
	-mv $^ $@

check-%: %.asm
	@diff $^ pass/$^ > /dev/null
	@echo PASSED $^

clean:
	@echo done

check-clean:
	-rm *.asm
