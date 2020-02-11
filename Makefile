
cv.css: style/cv.scss
	sass style/cv.scss out/cv.css

cv.html: cv.md
	pandoc -s cv.md -o out/cv.html

cv: cv.css cv.html
	
