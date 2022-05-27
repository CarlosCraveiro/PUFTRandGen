SRC=src/XORInvRingOsc.v

CC = iverilog
CC_FLAGS=-Wall

#LINT=verilator
#LINT_FLAGS = +1364-2001ext+ --lint-only  -Wall -Wno-fatal -Wno-DECLFILENAME

MAIN_SIM=main.sim

all: $(MAIN_SIM)

main.sim:
	$(CC) $(CC_FLAGS) -o sim/$@ $(SRC)
	
run:	
	./sim/$(MAIN_SIM)

clean:
	rm -f ./sim/*.sim

help:
	@echo "Build system for PUFTRandNGen"
	@echo ""
	@echo "Supported targets:"
	@echo "------------------"
	@echo "all:			Build the standard simulation"
	@echo "sim:			Build the simulation target."
	@echo "run:			Run the built simulation."
#	@echo "lint:		Run linter on the project's source code"
	@echo "clean:		Delete all built files."
