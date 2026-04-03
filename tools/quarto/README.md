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
