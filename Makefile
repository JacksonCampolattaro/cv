
all: cv

clean:
	rm out/*

cv.css: style/cv.scss
	sass style/cv.scss out/cv.css

cv.html: cv.md cv.css
	pandoc --metadata pagetitle="cv" -s cv.md --css cv.css -o out/cv.html

cv.pdf: cv.html
	pandoc -t html out/cv.html --css out/cv.css -o out/cv.pdf

cv: cv.css cv.html
	
