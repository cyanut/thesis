.PHONY: thesis.pdf all clean

all: thesis.pdf

thesis.pdf: ut-thesis.tex
	latexmk -pdf -pdflatex='pdflatex -interactive=nonstopmode' -use-make $<

clean:
	latexmk -CA
