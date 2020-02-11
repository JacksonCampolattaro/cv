
all: cv

clean:
	rm out/*

cv.css: style/cv.scss
	sass style/cv.scss out/cv.css

cv.html: cv.md cv.css
	pandoc -s cv.md --css cv.css -o out/cv.html

cv: cv.css cv.html
	
