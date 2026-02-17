# HTML Slides Starter Kit

A ready-to-use [reveal.js](https://revealjs.com) template for academics who want to code their lecture slides in HTML instead of PowerPoint, Keynote, or Google Slides. Fork it, customise it, and present from your browser within minutes.

**You don't need to know HTML.** Use an AI assistant to generate and edit your slides — this repo gives you the template, theme, and prompts to get started.

Companion to the blog post: [The Death of PowerPoint](https://xkiwilabs.com/blog/the-death-of-powerpoint)

---

## Quick Start (5 Minutes)

1. **Download** — Click the green **Code** button above → **Download ZIP** (or [fork this repo](https://github.com/xkiwilabs/html-slides-starter-kit/fork))
2. **Open** — Double-click `index.html` to open in your browser
3. **Navigate** — Use arrow keys to move between slides
4. **Edit** — Open `index.html` in any text editor, change the text, save, and refresh

That's it. You have a working 6-slide lecture deck.

> **Windows users:** Right-click `index.html` → Open with → Google Chrome

---

## What's Inside

| File/Folder | What it is |
|-------------|-----------|
| [`index.html`](https://xkiwilabs.github.io/html-slides-starter-kit/) | Complete 6-slide example lecture deck ([view live](https://xkiwilabs.github.io/html-slides-starter-kit/)) |
| [`single-slide-template.html`](https://xkiwilabs.github.io/html-slides-starter-kit/single-slide-template.html) | Self-contained single slide ([view live](https://xkiwilabs.github.io/html-slides-starter-kit/single-slide-template.html)) |
| [`css/academic-theme.css`](css/academic-theme.css) | Professional dark theme — change 3 colours to rebrand |
| [`examples/`](examples/) | Individual slide type examples (title, columns, grid, etc.) |
| [`guides/`](guides/) | Step-by-step how-to guides |
| [`prompts/`](prompts/) | AI prompt templates — copy, paste, generate |
| [`img/`](img/) | Your images and figures go here |

---

## Example Slide Types

Each example works as a standalone file — click to preview live, or double-click the file locally.

| Example | Layout | Live Preview |
|---------|--------|:------------:|
| [Title slide](examples/title-slide.html) | Centred title, author, institution | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/title-slide.html) |
| [Section divider](examples/section-divider.html) | Section break with large number | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/section-divider.html) |
| [Text slide](examples/text-slide.html) | Bullets + coloured highlight boxes | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/text-slide.html) |
| [Image slide](examples/image-slide.html) | Two-column: text + image | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/image-slide.html) |
| [Diagram slide](examples/diagram-slide.html) | Flow chart / process diagram | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/diagram-slide.html) |
| [Figure slide](examples/figure-slide.html) | Python/R-generated figure display | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/figure-slide.html) |
| [Two-column](examples/two-column.html) | Side-by-side comparison | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/two-column.html) |
| [Grid layout](examples/grid-layout.html) | 2×2 grid with coloured borders | [view](https://xkiwilabs.github.io/html-slides-starter-kit/examples/grid-layout.html) |

---

## Using AI to Build Your Slides

You don't need to write HTML by hand. Describe what you want to an AI assistant and it generates the code.

**Quick example:**
```
Create a reveal.js slide about [YOUR TOPIC] using the classes
from css/academic-theme.css. Use a two-column layout with
highlight boxes. Keep the text concise.
```

**Tip:** Paste `css/academic-theme.css` as context so the AI matches your theme.

This works with **any AI tool** — VS Code Copilot (any model), Claude, ChatGPT, Gemini CLI, Codex, or any other assistant.

### Prompt Cookbook

Ready-to-paste prompts organised by task:

| Cookbook | Prompts |
|---------|---------|
| [Build slides from scratch](prompts/build-slides.md) | 10 prompts — starter, full deck, title, bullets, diagrams |
| [Modify layouts](prompts/modify-layouts.md) | 7 prompts — add columns, grid, animations, rearrange |
| [Change theme & branding](prompts/change-theme.md) | 6 prompts — colours, fonts, logo, full rebrand |
| [Convert from PowerPoint](prompts/convert-ppt.md) | 5 prompts — describe, paste, batch convert |

---

## Guides

| Guide | What you'll learn |
|-------|-------------------|
| [Getting Started](guides/getting-started.md) | Download, open, make your first edit |
| [VS Code Setup](guides/vs-code-setup.md) | Live preview, syntax highlighting, AI extensions |
| [AI Prompts](guides/ai-prompts.md) | Plan → Generate → Verify workflow |
| [PDF Export](guides/pdf-export.md) | `?print-pdf` step-by-step |
| [Offline Packaging](guides/offline-packaging.md) | Present without internet |
| [PowerPoint → HTML](guides/ppt-to-html.md) | Convert existing decks |
| [Customising the Theme](guides/customising-theme.md) | Brand your slides for your university |
| [Presenting Tips](guides/presenting-tips.md) | Shortcuts, speaker notes, projector setup |

---

## Customise for Your University

The entire theme is controlled by CSS variables in [`css/academic-theme.css`](css/academic-theme.css). Change 3 things to rebrand:

1. **Primary colour** — change `--theme-primary` to your brand colour
2. **Background gradient** — update `--theme-gradient`
3. **Logo** — replace `img/placeholder-logo.svg` with your logo

See [Customising the Theme](guides/customising-theme.md) for the full guide.

---

## Presenting

- **Arrow keys** to navigate
- **F** for fullscreen
- **S** for speaker view (shows your notes + next slide)
- **O** for slide overview
- **B** to black out the screen

See [Presenting Tips](guides/presenting-tips.md) for projector setup, clicker support, and more.

---

## PDF Export

1. Add `?print-pdf` to the URL
2. Press `Ctrl+P` / `Cmd+P`
3. Set to Landscape, no margins, enable background graphics
4. Save as PDF

See [PDF Export](guides/pdf-export.md) for detailed instructions.

---

## Technical Details

- **reveal.js 5.1.0** loaded from CDN — no install needed
- **No build step** — double-click HTML to open, no Node.js or terminal required
- **System font fallback** — slides look good offline (Segoe UI on Windows, SF Pro on Mac)
- **1920×1080** native resolution — optimised for projectors
- **Print-ready** — PDF export via `?print-pdf` query parameter

---

## Learn More

- [The Death of PowerPoint](https://xkiwilabs.com/blog/the-death-of-powerpoint) — the blog post that started this
- [reveal.js documentation](https://revealjs.com) — the presentation framework
- [xKiwiLabs Tools & Resources](https://xkiwilabs.com/tools) — more tools for academics

---

## License

[CC BY-NC-SA 4.0](LICENSE) — free to use, adapt, and share for non-commercial purposes with attribution.

---

## AI Disclosure

This repository was created with the assistance of AI tools (Claude, Claude Code, GPT-5, and Gemini). All content has been reviewed, tested, and edited by the author. The prompts, guides, and code represent the author's expertise and judgement about what works best for academic presentations.

*Built by [xKiwiLabs](https://xkiwilabs.com) — Michael J. Richardson, Macquarie University*
