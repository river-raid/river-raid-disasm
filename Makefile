GAME = river-raid

# Source files
CTL = $(GAME).ctl
T2S = $(GAME).t2s
INI = skoolkit.ini

# Generated files
SKOOL = $(GAME).skool
Z80_PRISTINE = $(GAME).pristine.z80
Z80_FIXED = $(GAME).fixed.z80
BIN_PRISTINE = $(GAME).pristine.bin
BIN_NON_FIXED = $(GAME).non-fixed.bin
ASM_NON_FIXED = $(GAME).non-fixed.asm
ASM_FIXED = $(GAME).asm

# Disassembly configuration
ORG = 16384
SIZE = 47104
PC = 23762
SP = 65344

.PHONY: clean verify test lint lint-order lint-instruction-order lint-lengths

all: $(ASM_FIXED) $(Z80_FIXED) verify html

# Download and convert original TZX to pristine snapshot
$(Z80_PRISTINE): $(T2S)
	tap2sna.py @$(T2S) \
		--reg pc=$(PC) \
		--reg sp=$(SP) \
		$(Z80_PRISTINE)

# Extract program binary from pristine snapshot (for verification)
$(BIN_PRISTINE): $(Z80_PRISTINE)
	python3 scripts/extract_bytes.py $(Z80_PRISTINE) $(ORG) $(SIZE) $@

# Disassemble pristine snapshot into skool format
$(SKOOL): $(Z80_PRISTINE) $(CTL)
	sna2skool.py --hex $(Z80_PRISTINE) --ctl $(CTL) > $@

# Assemble the skool to binary (intermediate step for verification)
$(BIN_NON_FIXED): $(ASM_NON_FIXED)
	pasmo --bin $(ASM_NON_FIXED) $@

verify: test lint

test: $(BIN_PRISTINE) $(BIN_NON_FIXED)
	cmp $(BIN_PRISTINE) $(BIN_NON_FIXED)

lint: lint-address-order lint-instruction-order lint-lengths

lint-address-order: $(CTL)
	python3 scripts/validate_ctl_address_order.py $(CTL)

lint-instruction-order: $(CTL)
	python3 scripts/validate_ctl_instruction_order.py $(CTL)

lint-lengths: $(CTL)
	python3 scripts/validate_ctl_lengths.py $(CTL)

# Build snapshot WITH patches applied (for manual testing)
$(Z80_FIXED): $(SKOOL)
	skool2bin.py --ofix $< - | bin2sna.py --border 0 --org $(ORG) --start $(PC) --stack $(SP) - $@

# Generate fixed assembly source
$(ASM_FIXED): $(SKOOL)
	@skool2asm.py --create-labels -f 1 $(SKOOL) > $@.tmp 2> $@.stderr; \
	if grep -q WARNING $@.stderr; then \
		cat $@.stderr >&2; rm -f $@.tmp $@.stderr; exit 1; \
	else \
		rm -f $@.stderr; mv $@.tmp $@; \
	fi

# Generate non-fixed assembly source
$(ASM_NON_FIXED): $(SKOOL)
	@skool2asm.py --create-labels $(SKOOL) > $@.tmp 2> $@.stderr; \
	if grep -q WARNING $@.stderr; then \
		cat $@.stderr >&2; rm -f $@.tmp $@.stderr; exit 1; \
	else \
		rm -f $@.stderr; mv $@.tmp $@; \
	fi

# Generate HTML documentation
html: html/.stamp

html/.stamp: $(SKOOL)
	skool2html.py -d html -H -o $(SKOOL)
	touch $@

clean:
	rm -rf \
		html \
		*.asm \
		*.bin \
		*.skool \
		*.z80
