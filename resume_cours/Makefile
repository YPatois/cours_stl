TEXFILES := fiche_puissance_si_elements.tex fiche_base_chimie_lewis_vsepr.tex

fiche_base_chimie_lewis_vsepr.pdf: lewis.tex

all: $(TEXFILES:.tex=.pdf)

%.pdf: %.tex $(DEPS)
	pdflatex $<

clean:
	rm -f *.aux *.log *.pdf

view: all
	@for file in $(TEXFILES); do \
	    xdg-open $$file.pdf; \
	done
