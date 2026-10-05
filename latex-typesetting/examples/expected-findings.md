# Fixture walkthrough

Review `fixture.tex` against the rule catalogue rather than trying to compile
this intentionally incomplete excerpt. A reasonable review should identify at
least:

- `EQ-01`, `EQ-02`, `EQ-06`/`EQ-07`, `EQ-11`: the display lacks sentence
  punctuation, source math is cramped, its numbered label is not referenced,
  and the prose uses operator-like `P`/`exp` forms. Do not change its
  mathematical meaning; ask whether equation (1) is intended to be referenced.
- `TB-02` through `TB-07`, `TB-09` through `TB-11`: generic caption, `[h]`,
  vertical/repeated rules, text minus, no decimal alignment and inconsistent
  precision/font sizing concerns. In particular, do not change values or
  round them without checking the data and analysis context.
- `FG-03`, `FG-05` through `FG-06`, `FG-09`/`FG-11`/`FG-12`: forced `[h]`,
  vague caption, caption placement and forced dimensions/file naming deserve
  contextual review. The source does not show whether the plot itself is
  vector, accessible, or correctly cropped, so report those as unchecked,
  not as observed defects.
- `CI-01`: `\citep` makes the sentence ungrammatical; recommend `\citet` if
  the author is the grammatical subject. `key2020` must be preserved.
- `XR-01`, `XR-02`, `XR-03`, `XR-05`: one hard-coded table number; generic
  labels; no nonbreaking space in the figure reference. Do not rename a label
  without updating its uses.

The second table documents an explicit journal exception to the default table
caption placement and float choice. If the stated journal instruction is
verified, do not report its below-table caption or `[H]` as a violation. This
checks that the skill considers precedence rather than applying the catalogue
mechanically.

`compliant.tex` demonstrates an already compliant equation, table, figure,
citations, labels, and macros. A review should not request cosmetic rewrites.
These examples are human-readable behavior checks; they are not a complete
LaTeX linter.
