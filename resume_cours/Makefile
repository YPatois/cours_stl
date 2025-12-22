TEXFILES = 01_quelques_bases 02_stereochimie 03_acide_base

all: $(TEXFILES)

$(TEXFILES):
	pdflatex $@.tex

clean:
	rm -f *.aux *.log *.pdf

view: all
	@for file in $(TEXFILES); do \
	    xdg-open $$file.pdf; \
	done
