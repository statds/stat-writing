---
name: latex-typesetting
description: Review, edit, or teach LaTeX typesetting for equations, tables, figures, citations, BibTeX, and cross-references. Apply the manuscript's preferences with judgment and defer to explicit user and journal requirements.
---

# Statistical LaTeX typesetting

Use this skill for LaTeX or LaTeX-backed documents. Its preferences come from the Statistical Writing manuscript and are especially suited to statistical papers, but apply them with judgment in other fields. Select **Review** by default; use **Edit** only when the user asks for changes, and **Teach** when they ask to learn or explain selected issues. The detailed rule catalogue at [references/rules.md](references/rules.md) is authoritative and is also linked from the book's LaTeX chapter. Read it before evaluating or changing style.

## Shared constraints

- Treat catalogue items as reasoned author preferences, not universal LaTeX rules. Explicit user instructions and journal requirements take precedence. Explain any resulting exception.
- Inspect the document class/template, journal instructions, package and macro definitions, source format, and actual build command before recommending or editing. Do not assume plain LaTeX if the manuscript is Quarto, bookdown, or another frontend.
- Preserve mathematical meaning, citation keys, labels, and established macros unless a necessary change is explained. Do not turn typesetting work into scientific-content changes or substantive prose revision.
- Separate technical errors (for example, undefined references or invalid source) from stylistic preferences. Report source locations and stable rule IDs.
- Use judgment for visual, semantic, and context-dependent decisions. Scripts may help locate duplicates or unresolved keys, but regular expressions cannot decide whether equations are grammatical, captions informative, decimals meaningful, or figures readable.

## Modes

**Review:** Make no source changes. Report each finding with location, rule ID, severity/type (technical error or style preference), why it matters under the rule, and a focused suggestion. Note compliant areas briefly when useful. Do not flag a preference as an error.

**Edit:** Make targeted changes consistent with the request and precedence constraints. Summarize changed files and decisions, including exceptions. Then compile using the repository's documented build process (or explain why not possible), inspect affected PDF pages when available, and review relevant warnings, equation layout, table readability, figures/captions, citations, and cross-references. Do not add or run unrelated tests.

**Teach:** Explain the selected issue(s), connect each to its rule ID and source rationale status, and show a before/after example. If a rationale is marked for author input, say so; do not present a proposed rationale as the author's.

## Verification

First identify the entry document and build route. Check class/template and journal instructions, packages/macros, bibliography backend/style, label/reference mechanism, and any generated-source workflow. In Review, inspect build logs or compile only when useful and permitted by the task; report what was checked. In Edit, compile and inspect the changed PDF pages when the environment supports it. Check undefined citations/labels, multiply defined labels, equation breaks and punctuation, table fit and number alignment, figure quality/aspect ratio/caption placement, and reference rendering. Report each unavailable check rather than implying it passed.

This repository's fixture and expected observations are in [examples/fixture.tex](examples/fixture.tex) and [examples/expected-findings.md](examples/expected-findings.md). Use them as behavioral examples, not as a regex specification. Installation, invocation, dependencies, and maintenance are documented in the [repository guide](README.md).
