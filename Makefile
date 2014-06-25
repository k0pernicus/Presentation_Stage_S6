LATEX = pdflatex
VISU = evince
SRC = soutenance_Vidjil.tex
PDF = $(SRC:.tex=.pdf)

visu: compile
	$(VISU) $(PDF)

compile:
	$(LATEX) $(SRC) && $(LATEX) $(SRC)

clean:
	rm -f *.synctex.gz *.out *.toc *.aux *.log


