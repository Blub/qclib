QCC=../fteqcc.bin
# by default use nexuiz' flags
QCFLAGS ?= -Werror -Wall -Wno-mundane -O3 -Ono-c -Ono-cs -flo -TDP1 $(QCFLAGADD)

QCFLAGS_NOWERROR=$(patsubst -Werror,,$(QCFLAGS))
QCFLAGS_NOFLO=$(patsubst -flo,,$(QCFLAGS))
QCFLAGS_NO_FLOWERROR=$(patsubst -flo,,$(QCFLAGS_NOWERROR))

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
	ternary_term \
	if_string \
	if_string_flag \
	if_i_without_op_support \
	if_i_without_op_support2 \
	if_i_with_op_support \
	\
	pointer_function \
	pointer_from_field \
	pointer_to_pointer \
	pointer_access \
	string_access \
	array_access \
	if_and_int_float \
	int_bitflags \

testsuite_fail = \
	unary_not_warning \

all: $(patsubst %,check-%,$(testsuite)) $(patsubst %,fail-%,$(testsuite_fail))

passall: $(patsubst %,pass/%.asm,$(testsuite))

multi_shuffle_33.asm: multi_shuffle_33.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS_NOWERROR) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

if_and_int_float.asm: if_and_int_float.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS_NO_FLOWERROR) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

if_i_without_op_support.asm: if_i_without_op_support.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(patsubst -TDP1,,$(QCFLAGS_NO_FLOWERROR)) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

if_i_without_op_support2.asm: if_i_without_op_support.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(patsubst -TDP1,,$(QCFLAGS_NO_FLOWERROR)) -fno-iffloat > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

if_i_with_op_support.asm: if_i_without_op_support.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS_NO_FLOWERROR) > compile.out
	@rm -f *.lno *.dat *.log progs.src
	@rm compile.out
	@mv qc.asm $@

if_string_flag.asm: if_string.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@$(QCC) -Fwasm $(QCFLAGS_NO_WERROR) -fifstring > compile.out
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

# this must error
fail-%: %.qc
	@echo "test.dat" > progs.src
	@echo $^ >> progs.src
	@sh -c "if $(QCC) -Fwasm $(QCFLAGS) > compile.out; then echo 'FAILED $^'; false; else true; fi"
	@rm -f *.lno *.dat *.log progs.src qc.asm compile.out
	@echo PASSED $^

clean:
	@rm -f err.diff compile.out
	@echo done

check-clean:
	-rm pass/*.asm
