TEXFILES := 01_quelques_bases.tex \
			02_lewis_vsepr.tex \
			03_stereochimie.tex \
			04_acide_base.tex

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
