# Comparing Slide Tools

This starter kit uses [reveal.js](https://revealjs.com) by default — just open `index.html` and go. But reveal.js isn't the only way to make HTML slides. This guide compares four tools, each with a working example in this directory.

## Ranking

| Rank | Tool | Best for | Strengths | Weaknesses | Verdict |
|------|------|----------|-----------|------------|---------|
| 1 | **Quarto + reveal.js** | Research, teaching, technical talks | Markdown, code execution, equations, citations, figures, speaker tools | Heavier than Marp, more config | Best overall |
| 2 | **Marp** | Fast, clean slide writing | Simple authoring, VS Code workflow, CSS theming | Less powerful for rich interactivity | Best for speed and simplicity |
| 3 | **Slidev** | Developer talks, live demos | Vue/web-tech native, interactive components, pixel-level control | More "frontend app" than presentation tool | Best for dev-centric decks |
| 4 | **reveal.js** | Maximum customisation | Flexible HTML framework, deep plugin ecosystem | More manual plumbing | Best for low-level control |
| 5 | **Pandoc** | Scripted conversion pipelines | Excellent converter, good for CI and multi-format publishing | Not the nicest authoring experience | Best as infrastructure |

## Quick recommendation

> - **Academic / teaching / research:** → Quarto
> - **Fastest general workflow:** → Marp
> - **Code demos / dev talks:** → Slidev
> - **Total control, hand-rolled:** → reveal.js (this repo's default)
> - **Conversion pipelines:** → Pandoc (no example included — see [pandoc.org](https://pandoc.org))

## Try the examples

| Tool | Example | Install required? |
|------|---------|-------------------|
| [reveal.js](reveal/) | `reveal/slides.html` | No — just open in browser |
| [Marp](marp/) | `marp/slides.md` | Marp CLI or VS Code extension |
| [Quarto](quarto/) | `quarto/slides.qmd` | Quarto CLI |
| [Slidev](slidev/) | `slidev/slides.md` | Node.js |

Each example contains the same 4 base slides (title, text, image, end) plus 1–2 bonus slides showcasing that tool's unique strengths.

## reveal.js

reveal.js is the HTML presentation framework this starter kit is built on. You write slides directly in HTML (or use plugins for Markdown), giving you full control over layout, styling, and behaviour. It requires no build step — just open the file in a browser.

→ [Try the example](reveal/)

Docs: [revealjs.com](https://revealjs.com)

## Marp

Marp (Markdown Presentation Ecosystem) lets you write slides in plain Markdown with a minimal directive syntax for theming and layout. It integrates tightly with VS Code for live preview and exports to HTML, PDF, and PowerPoint with a single command.

→ [Try the example](marp/)

Docs: [marp.app](https://marp.app)

## Quarto

Quarto is an open-source scientific publishing system that can render Markdown (with embedded R, Python, Julia, or Observable code) into reveal.js presentations. It handles equations, citations, cross-references, and executable code blocks out of the box, making it the strongest choice for academic and data-driven talks.

→ [Try the example](quarto/)

Docs: [quarto.org](https://quarto.org)

## Slidev

Slidev is a presentation tool built for developers. Slides are written in Markdown but rendered as a Vue application, so you can drop in interactive components, live coding blocks, and animations with full access to the web platform. It ships with a presenter mode, recording support, and a large theme ecosystem.

→ [Try the example](slidev/)

Docs: [sli.dev](https://sli.dev)

## Pandoc

Pandoc is a document conversion tool, not a slide authoring environment. It's excellent for CI pipelines and multi-format publishing, but day-to-day you'd use one of the tools above. No example is included, but here's the one-liner:

```bash
pandoc slides.md -t revealjs -s -o slides.html
```

Docs: [pandoc.org](https://pandoc.org)

## Feature matrix

| Feature | reveal.js | Marp | Quarto | Slidev | Pandoc |
|---------|-----------|------|--------|--------|--------|
| Install required | No | Yes (CLI or VS Code ext) | Yes (CLI) | Yes (Node.js) | Yes (CLI) |
| Markdown authoring | No (HTML) | ✓ | ✓ | ✓ | ✓ (input) |
| Code execution | ✗ | ✗ | ✓ | ✗ | ✗ |
| Math / LaTeX | ✓ (plugin) | ✓ (KaTeX) | ✓ | ✓ (KaTeX) | ✓ |
| Citations / bibliography | ✗ | ✗ | ✓ | ✗ | ✓ |
| Theming | ✓ | ✓ | ✓ | ✓ | Limited |
| Speaker notes | ✓ | ✓ | ✓ | ✓ | ✗ |
| PDF export | ✓ | ✓ | ✓ | ✓ | ✓ |
| Offline use | ✓ | ✓ | ✓ | ✓ | ✓ |
