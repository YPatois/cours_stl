TEXFILE = molecules

all:
	pdflatex $(TEXFILE).tex

clean:
	rm -f *.aux *.log *.pdf

view: all
	xdg-open $(TEXFILE).pdf
