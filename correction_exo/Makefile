TEXFILES = tp1.pdf exo1.pdf

.PHONY: all clean view

all: $(TEXFILES)

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.aux *.log *.pdf

view: all
	xdg-open $(TEXFILES).pdf