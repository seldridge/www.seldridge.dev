.PHONY: all clean deploy host
.PRECIOUS: build/%

all: $(patsubst src/%.md,build/%.html,$(shell find src -type f -name '*.md'))

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

build/%.html: src/%.md src/header.html build/style.css build/CNAME build/redirect.html scripts/briefs.lua
	pandoc -H src/header.html -s -M document-css=true --lua-filter scripts/briefs.lua -o $@ $<

build/%: src/% | build/
	cp $< $@

build/:
	mkdir $@
