.PHONY: ut-thesis.pdf all clean

all: ut-thesis.pdf

ut-thesis.pdf: ut-thesis.tex
	latexmk -pdf -pdflatex='pdflatex' -use-make ut-thesis.tex

clean:
	latexmk -CA
	rm *.glo *.xdy
	rm *.aux
	rm chapters/*.aux
