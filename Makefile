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

.PHONY: clean verify

all: $(ASM_FIXED) $(Z80_FIXED) verify

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

# Verify that rebuilt binary matches pristine binary
verify: $(BIN_PRISTINE) $(BIN_NON_FIXED)
	cmp $(BIN_PRISTINE) $(BIN_NON_FIXED)

# Build snapshot WITH patches applied (for manual testing)
$(Z80_FIXED): $(SKOOL)
	skool2bin.py --ofix $< - | bin2sna.py --border 0 --org $(ORG) --start $(PC) --stack $(SP) - $@

# Generate fixed assembly source
$(ASM_FIXED): $(SKOOL)
	skool2asm.py --create-labels -f 1 $(SKOOL) > $@

# Generate non-fixed assembly source
$(ASM_NON_FIXED): $(SKOOL)
	skool2asm.py --create-labels $(SKOOL) > $@

clean:
	rm -f \
		*.asm \
		*.bin \
		*.skool \
		*.z80
