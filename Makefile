
all: pdf

pdf: cv.tex
	xelatex -output-directory=out cv.tex
