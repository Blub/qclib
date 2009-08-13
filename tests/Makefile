QCC=../fteqcc.bin
# by default use nexuiz' flags
QCFLAGS ?= -Werror -Wall -Wno-mundane -O3 -Ono-c -Ono-cs -flo

QCFLAGS_NOWERROR=$(patsubst -Werror,,$(QCFLAGS))

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
	component_product \
	unary_minus \
	ternary_target \
	ternary_term

all: $(patsubst %,check-%,$(testsuite))

passall: $(patsubst %,pass/%.asm,$(testsuite))

multi_shuffle_33.asm: multi_shuffle_33.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS_NOWERROR) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

%.asm: %.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

pass/%.asm: %.asm
	-mv $^ $@

check-%: %.asm
	@diff -up $^ pass/$^ > err.diff
	@rm err.diff
	@rm $^
	@echo PASSED $^

clean:
	@echo done

check-clean:
	-rm pass/*.asm
