TEXFILES := 01_quelques_bases.tex \
			02_lewis.tex \
			03_vsepr.tex \
			04_stereochimie.tex \
			05_acide_base.tex

02_lewis_vsepr.pdf: lewis.tex

all: $(TEXFILES:.tex=.pdf)

%.pdf: %.tex $(DEPS)
	pdflatex $<

clean:
	rm -f *.aux *.log *.pdf

view: all
	@for file in $(TEXFILES); do \
	    xdg-open $$file.pdf; \
	done
