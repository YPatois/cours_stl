TEXFILES = tp1.pdf tp2.pdf exo1.pdf exo_redox1.pdf exo_avancement1.pdf

.PHONY: all clean view

all: $(TEXFILES)

%.pdf: %.tex
	pdflatex -interaction=nonstopmode $<

clean:
	rm -f *.aux *.log *.pdf

view: all
	xdg-open $(TEXFILES).pdf