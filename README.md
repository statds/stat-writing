# Statistical Writing

This book is authored in Quarto and rendered as an HTML book with Quarto's
default styling. Install Quarto from <https://quarto.org/> and run
`make render` in the repository root. It passes the root `.qmd` sources,
`_quarto.yml`, and the book bibliographies as Make prerequisites, then lets
Quarto render its multi-page output and handle incremental work. The generated
site is written to `_book/`; `make clean` removes `_book/` and `.quarto/`.

GitHub Actions renders the book and deploys `_book/` to the `gh-pages` branch
on pushes to `main` or `master`. The source is at
<https://github.com/statds/stat-writing>.
