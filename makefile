TEX = xelatex -no-pdf  -synctex=1 -interaction=nonstopmode -file-line-error -recorder

.PHONY: all view

all : joseph-resume.pdf

view :
	open joseph-resume.pdf

joseph-resume.pdf : joseph-resume.tex
	$(TEX) joseph-resume.tex

joseph-resume.aux : joseph-resume.tex
	$(TEX) joseph-resume.tex

clean:
	rm -f *.pdf *.fls *.log *.aux *.gz *.out *.bbl *.blg *.xdv
