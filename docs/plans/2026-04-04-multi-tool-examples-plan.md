# Multi-Tool Examples Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add working example slide decks for reveal.js, Marp, Quarto, and Slidev under a new `tools/` directory, with a central comparison guide.

**Architecture:** Each tool gets its own self-contained subdirectory under `tools/` with a README and working slide file(s). A central `tools/README.md` serves as the comparison guide with the ranking table, recommendations, feature matrix, and Pandoc mention. Two existing files get minor additions to surface the new directory.

**Tech Stack:** HTML (reveal.js), Markdown (Marp, Slidev), QMD (Quarto), JSON (Slidev package.json)

---

### Task 1: Create directory structure

**Files:**
- Create: `tools/reveal/` (directory)
- Create: `tools/marp/` (directory)
- Create: `tools/quarto/` (directory)
- Create: `tools/slidev/` (directory)

**Step 1: Create all directories**

Run:
```bash
mkdir -p tools/{reveal,marp,quarto,slidev}
```

**Step 2: Verify**

Run: `ls tools/`
Expected: `marp  quarto  reveal  slidev`

---

### Task 2: Create reveal.js example (`tools/reveal/`)

**Files:**
- Create: `tools/reveal/slides.html`
- Create: `tools/reveal/README.md`

**Step 1: Write `tools/reveal/slides.html`**

A self-contained reveal.js deck with:
- 4 common slides (title, text+bullets, image, end)
- 2 bonus slides: fragment animations + speaker notes demo
- Uses reveal.js 5.1.0 from CDN (same as rest of repo)
- References `../../img/placeholder-chart.svg` for the image slide
- Inline minimal CSS (not dependent on `css/academic-theme.css` — this example should work standalone from `tools/reveal/`)

Common slides content (use this EXACT content for all 4 tools):

**Slide 1 — Title:**
- Title: "Introduction to Research Methods"
- Subtitle: "Foundations of Empirical Inquiry"
- Author: "Dr. Jane Smith"
- Affiliation: "Department of Psychology, University Name"
- Date: "Semester 1, 2026"

**Slide 2 — Text + Bullets:**
- Heading: "Types of Research"
- 2 groups:
  - Quantitative: numerical data, statistical analysis, experiments/surveys
  - Qualitative: text/interviews, depth and context, case studies/ethnography
- Brief mention of mixed methods

**Slide 3 — Image:**
- Heading: "Visualising Your Data"
- Left column: 3-4 bullet points about chart types
- Right column: `../../img/placeholder-chart.svg` with caption

**Slide 4 — End:**
- "Questions?"
- "j.smith@university.edu"
- "Slides available at: [course website URL]"

**Bonus Slide 5 — Fragment animations:**
- Heading: "Key Concepts (Revealed One by One)"
- 4 bullet points with `class="fragment"` so they appear on click
- Comment in HTML explaining how fragments work

**Bonus Slide 6 — Speaker notes:**
- Heading: "This Slide Has Speaker Notes"
- Brief content, with an `<aside class="notes">` block
- Comment explaining press S to open speaker view

**Step 2: Write `tools/reveal/README.md`**

```markdown
# reveal.js

The presentation framework this starter kit is built on. Maximum flexibility — you write HTML directly.

## Prerequisites

None. Just a browser.

## Quick Start

1. Open `slides.html` in your browser (double-click the file)
2. Use arrow keys to navigate

No install, no build step, no terminal.

## What's in this example

- `slides.html` — 6 slides: 4 common slides + fragment animations + speaker notes demo

## Learn More

- [reveal.js documentation](https://revealjs.com)
- [Back to tool comparison](../README.md)
```

**Step 3: Verify by opening in browser**

Run: `xdg-open tools/reveal/slides.html` (or just confirm file is valid HTML)

**Step 4: Commit**

```bash
git add tools/reveal/
git commit -m "Add reveal.js example to tools/"
```

---

### Task 3: Create Marp example (`tools/marp/`)

**Files:**
- Create: `tools/marp/slides.md`
- Create: `tools/marp/README.md`

**Step 1: Write `tools/marp/slides.md`**

Marp Markdown deck with:
- Marp frontmatter (`marp: true`, theme, paginate, size)
- 4 common slides (same content as Task 2) separated by `---`
- 2 bonus slides:
  - Scoped CSS styling: a slide using `<!-- _class: invert -->` and a `<style scoped>` block to demo per-slide styling
  - Directive demo: a slide using `<!-- _backgroundColor: #1a1a2e -->` and `<!-- _color: white -->` to show how directives work
- Image slide uses `![alt](../../img/placeholder-chart.svg)` Markdown syntax

Frontmatter:
```yaml
---
marp: true
theme: default
paginate: true
size: 16:9
---
```

**Step 2: Write `tools/marp/README.md`**

```markdown
# Marp

Write slides in pure Markdown. The fastest way to go from text to a presentation.

## Prerequisites

Install the Marp CLI:

```bash
npm install -g @marp-team/marp-cli
```

Or use the [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) extension (no CLI needed).

## Quick Start

**With CLI:**

```bash
cd tools/marp
marp slides.md --preview
```

**With VS Code:**

1. Install the Marp for VS Code extension
2. Open `slides.md`
3. Click the preview icon in the top right

## What's in this example

- `slides.md` — 6 slides: 4 common slides + scoped CSS styling + directive demo

## Learn More

- [Marp documentation](https://marp.app)
- [Marp CLI](https://github.com/marp-team/marp-cli)
- [Back to tool comparison](../README.md)
```

**Step 3: Validate Markdown is well-formed**

Eyeball check: frontmatter is valid YAML, slide separators are `---`, image paths are correct.

**Step 4: Commit**

```bash
git add tools/marp/
git commit -m "Add Marp example to tools/"
```

---

### Task 4: Create Quarto example (`tools/quarto/`)

**Files:**
- Create: `tools/quarto/slides.qmd`
- Create: `tools/quarto/README.md`

**Step 1: Write `tools/quarto/slides.qmd`**

Quarto revealjs deck with:
- YAML frontmatter: `format: revealjs`, title, author, theme
- 4 common slides (same content as Task 2) in Markdown with `##` headers as slide breaks
- 2 bonus slides:
  - Code execution: a Python code block with `{python}` that generates a simple matplotlib bar chart (with `echo: true` so the code is visible)
  - Citation: a slide with a footnote-style citation demonstrating `[@reference]` syntax, with a note that Quarto can use `.bib` files

Frontmatter:
```yaml
---
title: "Introduction to Research Methods"
subtitle: "Foundations of Empirical Inquiry"
author: "Dr. Jane Smith"
institute: "Department of Psychology, University Name"
date: "Semester 1, 2026"
format:
  revealjs:
    theme: default
    slide-number: true
    transition: slide
---
```

Image slide uses `![caption](../../img/placeholder-chart.svg)` Markdown syntax.

**Step 2: Write `tools/quarto/README.md`**

```markdown
# Quarto

Write slides in Markdown with built-in support for code execution, LaTeX equations, citations, and themes.

## Prerequisites

Install the Quarto CLI:

- Download from [quarto.org/docs/get-started](https://quarto.org/docs/get-started/)

For the code execution demo, you also need Python:

```bash
pip install matplotlib numpy
```

## Quick Start

```bash
cd tools/quarto
quarto preview slides.qmd
```

This opens a live-reloading preview in your browser.

## What's in this example

- `slides.qmd` — 6 slides: 4 common slides + executable Python code block + citation demo

## Learn More

- [Quarto presentations guide](https://quarto.org/docs/presentations/revealjs/)
- [Back to tool comparison](../README.md)
```

**Step 3: Validate QMD is well-formed**

Eyeball check: YAML frontmatter is valid, code block syntax is correct, image paths are correct.

**Step 4: Commit**

```bash
git add tools/quarto/
git commit -m "Add Quarto example to tools/"
```

---

### Task 5: Create Slidev example (`tools/slidev/`)

**Files:**
- Create: `tools/slidev/slides.md`
- Create: `tools/slidev/package.json`
- Create: `tools/slidev/README.md`

**Step 1: Write `tools/slidev/slides.md`**

Slidev Markdown deck with:
- YAML frontmatter: theme, title, info
- 4 common slides (same content as Task 2) separated by `---`
- 2 bonus slides:
  - Code highlighting with line focus: a code block using `{all|1-3|5-7}` syntax to highlight lines step by step
  - Interactive component: a simple inline `<Counter />` Vue component defined with `<script setup>` showing reactivity (a button that increments a count)
- Image slide uses `<img src="../../img/placeholder-chart.svg">` or Markdown image syntax

Frontmatter:
```yaml
---
theme: default
title: Introduction to Research Methods
info: Foundations of Empirical Inquiry
---
```

**Step 2: Write `tools/slidev/package.json`**

Minimal:
```json
{
  "name": "slidev-example",
  "private": true,
  "scripts": {
    "dev": "slidev slides.md",
    "build": "slidev build slides.md"
  },
  "dependencies": {
    "@slidev/cli": "^51.0.0",
    "@slidev/theme-default": "latest"
  }
}
```

**Step 3: Write `tools/slidev/README.md`**

```markdown
# Slidev

Developer-focused slides powered by Vue and Vite. Build interactive, code-heavy presentations with web technologies.

## Prerequisites

- [Node.js](https://nodejs.org) (v18 or later)

## Quick Start

```bash
cd tools/slidev
npm install
npm run dev
```

Opens at `http://localhost:3030`.

## What's in this example

- `slides.md` — 6 slides: 4 common slides + code line highlighting + interactive Vue component

## Learn More

- [Slidev documentation](https://sli.dev)
- [Back to tool comparison](../README.md)
```

**Step 4: Commit**

```bash
git add tools/slidev/
git commit -m "Add Slidev example to tools/"
```

---

### Task 6: Write comparison guide (`tools/README.md`)

**Files:**
- Create: `tools/README.md`

**Step 1: Write `tools/README.md`**

Structure (in order):

1. **Title + intro paragraph** — "Comparing Slide Tools"
2. **Ranking table** — from the design doc (Rank, Tool, Best for, Strengths, Weaknesses, Verdict)
3. **Quick recommendation** — blockquote with 5 one-liners matching use case to tool
4. **Per-tool sections** — for reveal.js, Marp, Quarto, Slidev:
   - 2-3 sentence description
   - Link to `reveal/`, `marp/`, `quarto/`, `slidev/` directory
   - Link to official docs
5. **Pandoc note** — short paragraph explaining it's a converter not an authoring tool, with `pandoc slides.md -t revealjs -s -o slides.html` command
6. **Feature matrix table** — columns: Feature, reveal.js, Marp, Quarto, Slidev, Pandoc. Rows: Install required, Markdown authoring, Code execution, Math/LaTeX, Citations, Theming, Speaker notes, PDF export, Offline use

**Step 2: Commit**

```bash
git add tools/README.md
git commit -m "Add tool comparison guide"
```

---

### Task 7: Update existing files

**Files:**
- Modify: `README.md` (root)
- Modify: `guides/getting-started.md`

**Step 1: Add row to "What's Inside" table in `README.md`**

After the `img/` row (around line 34), add:

```markdown
| [`tools/`](tools/) | Compare reveal.js, Marp, Quarto, and Slidev — with working examples |
```

**Step 2: Add "Other Slide Tools" section in `README.md`**

After the "Technical Details" section (after line ~143), add:

```markdown
## Other Slide Tools

This starter kit uses reveal.js, but it's not the only option for HTML slides. See [`tools/`](tools/) for a comparison of **Marp**, **Quarto**, **Slidev**, and **Pandoc** — with working examples you can try.
```

**Step 3: Add bullet to `guides/getting-started.md`**

At the end of the "Next Steps" list (after line 69), add:

```markdown
- **Want to explore other slide tools?** → See [Comparing Slide Tools](../tools/README.md)
```

**Step 4: Commit**

```bash
git add README.md guides/getting-started.md
git commit -m "Surface tools/ directory in README and getting-started guide"
```

---

### Task 8: Final review

**Step 1: Verify all files exist**

Run:
```bash
find tools/ -type f | sort
```

Expected:
```
tools/README.md
tools/marp/README.md
tools/marp/slides.md
tools/quarto/README.md
tools/quarto/slides.qmd
tools/reveal/README.md
tools/reveal/slides.html
tools/slidev/README.md
tools/slidev/package.json
tools/slidev/slides.md
```

**Step 2: Verify image paths resolve**

Run:
```bash
ls tools/reveal/../../img/placeholder-chart.svg
```

Expected: file exists

**Step 3: Verify reveal.js example is valid HTML**

Open `tools/reveal/slides.html` in browser or validate structure.

**Step 4: Check all internal links in READMEs**

Verify that `../README.md` links from each tool README point to `tools/README.md`, and `tools/` links from root README point correctly.
