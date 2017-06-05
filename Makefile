.PHONY: all clean ut-thesis.pdf

all: ut-thesis.pdf

ut-thesis.pdf: tex/*.tex tex/chapters/*.tex tex/*.bib figs/ad/*
	latexmk -pdf -r ./latexmkrc -use-make -cd tex/ut-thesis.tex
	cp tex/ut-thesis.pdf .


clean:
	cd tex && latexmk -CA
	-rm tex/*.glo tex/*.xdy
	
