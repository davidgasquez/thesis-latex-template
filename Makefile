.PHONY: latexmk clean dev pdf all

COMMON_FLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode --shell-escape %O %S"

all: pdf

pdf: thesis.tex
	latexmk $(COMMON_FLAGS) $<

dev: thesis.tex
	latexmk $(COMMON_FLAGS) -pvc -view=none $<

clean:
	latexmk $(COMMON_FLAGS) -C
