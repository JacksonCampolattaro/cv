
all: pdf

pdf: cv.tex
	pdflatex -output-directory=out cv.tex
