.DEFAULT_GOAL := render

# Quarto's book render has multiple HTML outputs, so Make should not model one
# page (such as index.html) as if it represented the whole build. Pass the
# project inputs as prerequisites and let Quarto manage its own incremental
# rendering.
BOOK_SOURCES := $(wildcard *.qmd)
BOOK_CONFIG := _quarto.yml
BOOK_BIBLIOGRAPHIES := book.bib jyan.bib
BOOK_INPUTS := $(BOOK_SOURCES) $(BOOK_CONFIG) $(BOOK_BIBLIOGRAPHIES)

.PHONY: all render clean

all: render

render: $(BOOK_INPUTS)
	quarto render

clean:
	rm -rf _book .quarto
