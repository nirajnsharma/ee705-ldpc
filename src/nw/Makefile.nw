.PHONY : all
DOC ?= fileName
ROOT ?= boilerplate
SOURCES = LdpcCore.bsv.nw Nodes.bsv.nw

all : weave tangle

weave: $(SOURCES)
	noweave -n -delay -index LdpcCore.bsv.nw > ../../resources/LdpcCore.tex
	noweave -n -delay -index Nodes.bsv.nw > ../../resources/Nodes.tex
tangle: $(SOURCES)
	notangle -R"boilerplate" LdpcCore.bsv.nw > ../bsv/LdpcCore.bsv
	notangle -R"type definitions" LdpcCore.bsv.nw  > ../bsv/LdpcTypes.bsv
	notangle -R"boilerplate" Nodes.bsv.nw > ../bsv/Nodes.bsv
rtl: tangle
	make -f Makefile.hw compile

.PHONY: clean
doc_clean:
	rm -f *.log *.aux
full_clean:
	rm -f *.log *.aux *.tex *.bsv
