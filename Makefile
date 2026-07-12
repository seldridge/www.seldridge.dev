.PHONY: all clean deploy host
.PRECIOUS: build/%

all: build/index.html

clean:
	rm -rf build/

# This assumes that the branch `deploy` doesn't already exist.  This is true of
# CI environments, but may not be true of a local checkout.
deploy: all
	git checkout --orphan deploy
	git rm -rf .
	mv build/* .
	git add *.html *.css CNAME
	git commit -m "Automated deployment"
	git push --force origin deploy

# Start a local webserver on port 8000 to host the website.
host: all
	python -m http.server 8000 -d build

build/%.html: src/%.md src/header.html build/style.css build/CNAME build/redirect.html
	pandoc -H src/header.html -s -M document-css=true -o $@ $<

build/%: src/% | build/
	cp $< $@

build/:
	mkdir $@
