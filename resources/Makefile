DOC ?= Interim-Report
SOURCES = Makefile $(DOC).tex

.PHONY: default
#default: full bib clean
default: full clean

.PHONY: full
full: $(SOURCES)
	pdflatex  $(DOC); pdflatex $(DOC); pdflatex $(DOC)

.PHONY: bib
bib:
	bibtex  $(DOC)

.PHONY: clean
clean:
	rm -f  *~  *.toc  *.aux  *.blg  *.bbl  *.log  *.out  *.dvi  */*.aux  */*~

.PHONY: fullclean
fullclean:
	make clean
	rm  $(DOCNAME).pdf
