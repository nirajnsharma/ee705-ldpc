### Makefile for the ldpc project
### Generated by Bluespec Workstation on Fri Mar 22 16:14:51 IST 2019

SOURCES = LdpcCore.bsv Nodes.bsv LdpcTypes.bsv
TOPMOD = mkLdpcCore
TOPFILE = LdpcCore.bsv
default: full_clean compile link

bdir:
	mkdir -p build

.PHONY: compile
compile: $(SOURCES) bdir
	@echo Compiling...
	bsc -u -verilog -elab -vdir ../Verilog -bdir build -info-dir . -keep-fires -p .:%/Prelude:%/Libraries:%/Libraries/BlueNoC -g $(TOPMOD) $(TOPFILE)
	@echo Compilation finished

.PHONY: link
link:
	@echo Linking...
	bsc -e mkLdpcCore -verilog -o ./out -vdir ../Verilog  -vsim iverilog  -keep-fires ../Verilog/mkLdpcCore.v
	@echo Linking finished

.PHONY: simulate
simulate:
	@echo Simulation...
	./out 
	@echo Simulation finished

.PHONY: clean
clean:
	exec rm -f build/Nodes.bo
	exec rm -f build/mkBitNode_5_7.ba build/mkCheckNode_7_5.ba

.PHONY: full_clean
full_clean:
	rm -f build/Nodes.bo
	rm -f build/mkBitNode_5_7.ba build/mkCheckNode_7_5.ba
	rm -f ../Verilog/mkBitNode_5_7.v
	rm -f ../Verilog/mkCheckNode_7_5.v
