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
	vec3_intrinsic \
	component_product

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
	@diff -up $^ pass/$^ > err.diff
	@rm err.diff
	@echo PASSED $^

clean:
	@echo done

check-clean:
	-rm pass/*.asm
