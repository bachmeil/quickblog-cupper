files := $(patsubst %.md,%,$(wildcard *.md))

test:
	for f in $(files); do \
		pandoc -s -o $$f.html --template=cupper.html --mathjax $$f.md; \
	done
