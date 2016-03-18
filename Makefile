.PHONY: all clean 

all: ut-thesis.pdf

ut-thesis.pdf: tex/*.tex tex/chapters/*.tex
	latexmk -pdf -use-make -cd tex/ut-thesis.tex
	cp tex/ut-thesis.pdf .


clean:
	cd tex && latexmk -CA
	-rm tex/*.glo tex/*.xdy
	
