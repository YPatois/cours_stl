TEXFILES := 00_test.pdf \
			01_quelques_bases.pdf \
			02_lewis.pdf \
			03_vsepr.pdf \
			04_nomenclature.pdf \
			05_stereochimie.pdf \
			06_acide_base.pdf \
			07_equations_premier_second_degre.pdf \
			08_trigonometrie.pdf

all: $(TEXFILES)

%.pdf: %.tex
	pdflatex -interaction=nonstopmode $<

clean:
	rm -f *.aux *.log *.pdf *.out

view: all
	@for file in $(TEXFILES); do \
	    xdg-open $$file.pdf; \
	done
