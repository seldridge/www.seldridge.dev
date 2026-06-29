.PHONY: all clean deploy
.PRECIOUS: build/%

all: build/index.html

clean:
	rm -rf build/

deploy: all
	git branch -D deploy
	git checkout --orphan deploy
	git rm -rf .
	mv build/* .
	git add *.html *.css CNAME
	git commit -m "Automated deployment"
	git push --force origin deploy

build/%.html: src/%.md src/header.html build/style.css build/CNAME build/redirect.html | build/
	pandoc -H src/header.html -s -M document-css=true -o $@ $<

build/%: src/% | build/
	cp $< $@

build/:
	mkdir $@
