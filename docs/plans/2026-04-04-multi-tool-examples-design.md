# Multi-Tool Examples Expansion

## Goal

Expand the HTML Slides Starter Kit to showcase four slide tools (reveal.js, Marp, Quarto, Slidev) with working examples of each, without overwhelming beginners. Pandoc is mentioned but does not get its own example.

## Constraints

- The default beginner path (root `index.html`, `examples/`, `guides/`) stays reveal.js and remains undisturbed.
- Each tool directory must be self-contained — someone can `cd` in and follow the README to run it.
- Minimal changes to existing files.

## Directory Structure

```
tools/
├── README.md              ← comparison guide (ranking, recommendations, feature matrix, Pandoc mention)
├── reveal/
│   ├── README.md          ← lightweight install/run instructions
│   └── slides.html        ← common deck in raw reveal.js
├── marp/
│   ├── README.md
│   └── slides.md          ← common deck with Marp directives
├── quarto/
│   ├── README.md
│   └── slides.qmd         ← common deck with code execution demo
└── slidev/
    ├── README.md
    ├── slides.md           ← common deck with Vue component demo
    └── package.json        ← minimal, just slidev dependency
```

## Common Slide Content (4 slides, identical across all tools)

| Slide | Content | Purpose |
|-------|---------|---------|
| Title | "Introduction to Research Methods" / Dr. Jane Smith / University | Compare title slide handling |
| Text + bullets | 3-4 bullet points about research methods | Test basic text formatting |
| Image | Two-column: text left, placeholder image right | Test image handling and layout |
| End | "Questions?" / contact info | Simple closer |

## Bonus Slides (1-2 per tool, showcasing unique strengths)

| Tool | Bonus slides |
|------|-------------|
| reveal.js | Fragment animations, speaker notes |
| Marp | CSS scoped styling, `<!-- _class -->` directives |
| Quarto | Executable code block (Python/R) with rendered output, citation |
| Slidev | Interactive Vue component, code highlighting with line focus |

## Comparison Guide (`tools/README.md`)

Structure:

1. **Intro paragraph** — "This starter kit uses reveal.js by default. Here are other tools worth knowing about."
2. **Ranking table** — Rank, Tool, Best for, Strengths, Weaknesses, Verdict
3. **Quick recommendation box** — 5-line "if you need X, use Y" summary (includes Pandoc for conversion pipelines, noting no example directory)
4. **Per-tool section** — 2-3 sentence description, link to example directory, link to official docs
5. **Pandoc note** — short paragraph + one-liner `pandoc slides.md -t revealjs -o slides.html` command
6. **Feature matrix** — install required?, Markdown authoring, code execution, math/LaTeX, citations, theming, speaker notes, PDF export, offline use

## Per-Tool READMEs (~20-30 lines each, same template)

```
# [Tool Name]

One-sentence pitch.

## Prerequisites

- What to install (with command)

## Quick Start

1. command to install/setup
2. command to run/preview
3. open browser at URL

## What's in this example

- `slides.md/.qmd/.html` — 4 common slides + N bonus slides showcasing [strength]

## Learn More

- [Official docs](link)
- [Back to tool comparison](../README.md)
```

## Changes to Existing Files

### `README.md` (root)

- Add one row to "What's Inside" table: `tools/` — Compare reveal.js, Marp, Quarto, and Slidev with working examples
- Add short "Other Slide Tools" section (3-4 lines) after "Technical Details" pointing to `tools/`

### `guides/getting-started.md`

- Add one bullet to "Next Steps": **Want to explore other tools?** -> See [Choosing a Tool](../tools/README.md)

No other existing files are modified.
