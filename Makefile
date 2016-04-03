.PHONY: latexmk clean dev pdf all

COMMON_FLAGS = -pdf

all: pdf

pdf: thesis.tex
	latexmk $(COMMON_FLAGS) $<

dev: thesis.tex
	latexmk $(COMMON_FLAGS) -pvc -view=none $<

clean:
	latexmk $(COMMON_FLAGS) -c
