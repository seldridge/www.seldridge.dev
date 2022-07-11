.PHONY: all clean

all: index.html

%.html: src/%.md src/header.html
	pandoc -H src/header.html -o $@ $<

clean:
	$(MAKE) -C cv-simple clean
	rm -f index.html
