.PHONY: all clean

all: index.html

%.html: src/%.md src/header.html schuyler-eldridge-cv.pdf
	pandoc -H src/header.html -o $@ $<

schuyler-eldridge-cv.pdf: cv-simple/src/tex/cv.tex
	$(MAKE) -C cv-simple
	cp cv-simple/build/cv.pdf $@

cv-simple/src/tex/cv.tex:
	git submodule update --init cv-simple

clean:
	$(MAKE) -C cv-simple clean
	rm -f index.html schuyler-eldridge-cv.pdf
