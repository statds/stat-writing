# Statistical LaTeX typesetting skill

This repository-local skill applies the preferred practices in the Statistical
Writing manuscript to LaTeX-backed documents, with particular relevance to
statistical papers. Its rule catalogue is [references/rules.md](references/rules.md). The same
catalogue is linked from the book's LaTeX chapter; edit that catalogue rather
than copying rules into the skill or book.

## Installation and invocation

The skill is stored at `latex-typesetting/` in this repository.
To make it available in Codex, add this folder to the skills discovery path
supported by your installation or copy the folder to its configured skills
directory. Repository-local discovery behavior depends on the Codex setup.
Invoke it explicitly as `$latex-typesetting`, or describe a
typesetting review/edit/teaching task and allow automatic selection.

It has no runtime dependencies or scripts. Use the project's own LaTeX,
Quarto, R Markdown/bookdown, BibTeX, and PDF tools for the target manuscript.
For this book, the declared PDF route is `bookdown::pdf_book` with XeLaTeX,
`natbib`, and `preamble.tex`; the source also supports the configured gitbook
route. Check available commands and project instructions before building.

## Maintenance

Maintain each rule once in `references/rules.md`, including its stable ID,
source, practice, rationale status, before/after, exceptions, and verification.
When adding guidance, consult `02-tools.Rmd`, its teaching-note counterpart,
and current journal/user requirements. Preserve conflicting source guidance as
a conflict until the author resolves it. Keep the skill instructions concise
and point to the catalogue. Update the fixture and walkthrough when behavior
changes, and review examples for protected labels, keys, and journal exceptions.
Run the skill-creator quick validator after changing the skill structure.
