# Prompt Cookbook: Modify Layouts

Ready-to-paste prompts for changing the layout of existing slides. Works with any AI assistant.

> **How to provide context:** In a **chatbot** — paste your slide HTML into the chat. In **VS Code** — open the file so the AI sees it. With a **CLI agent** — reference the file path (e.g. `index.html`). See [build-slides.md](build-slides.md) for a full comparison of the three approaches.

> **Tip:** Always provide the current slide HTML so the AI knows what it's working with.

---

## 1. Convert List to Grid

**When to use:** A bullet list would look better as a 2×2 grid.

```
Here is my current slide (attached). Convert the bullet list
into a 2×2 grid layout using the .grid-2x2 class from my CSS
theme. Each grid cell should have:
- A heading (h3)
- The corresponding bullet point content as a paragraph
- Coloured left borders (handled automatically by the theme)
```

**What you should get:** The same content reorganised into four grid cells.

**Tip:** This works best when you have exactly 4 items. For 3 items, use `.three-column` instead.

---

## 2. Add Columns

**When to use:** A single-column slide needs a side-by-side layout.

```
Here is my current slide (attached). Split the content into
two columns using the .two-column class. Put [CONTENT A] in
the left column and [CONTENT B] in the right column.

If one side has more content, use .two-column.wide-left or
.two-column.wide-right.
```

**What you should get:** The content split into two columns within a grid layout.

---

## 3. Add a Highlight Box

**When to use:** You want to emphasise a key point or definition.

```
Here is my current slide (attached). Add a highlight box at
the [top/bottom] of the slide with:
- Colour: [blue/green/gold/red/purple/orange]
- Title: "[TITLE]"
- Content: "[YOUR KEY POINT]"

Use the .highlight-box class with the colour modifier, e.g.
.highlight-box.blue
```

**What you should get:** Your existing slide with an added coloured box.

---

## 4. Add Fragment Animations

**When to use:** You want content to appear one item at a time.

```
Here is my current slide (attached). Add reveal.js fragment
animations so that each bullet point appears one at a time
when I press the arrow key. Use class="fragment" on each <li>
element.
```

**What you should get:** The same slide, but each bullet fades in sequentially.

**Tip:** Fragment types: `fragment` (fade), `fragment fade-up`, `fragment highlight-blue`, `fragment highlight-current-blue`.

---

## 5. Rearrange Slide Content

**When to use:** The content order needs changing.

```
Here is my current slide (attached). Rearrange the content so that:
1. [ELEMENT] appears first
2. [ELEMENT] appears second
3. [ELEMENT] appears at the bottom

Keep all the existing content and CSS classes, just change
the order in the HTML.
```

**What you should get:** The same content in a different visual order.

---

## 6. Add a New Slide to a Deck

**When to use:** You need to insert a slide into an existing deck.

```
Here is my current slide deck (attached). Add a new slide
after slide [NUMBER] with:
- Title: "[TITLE]"
- Layout: [bullet list / two-column / grid / flow diagram / image]
- Content: [DESCRIBE WHAT GOES ON THE SLIDE]

Match the style of the surrounding slides. Use the CSS classes
from academic-theme.css.
```

**What you should get:** Your deck with the new slide inserted at the correct position.

**Tip:** Each `<section>` tag is one slide. The new `<section>` goes between existing ones.

---

## 7. Remove or Simplify a Slide

**When to use:** A slide has too much content.

```
Here is my current slide (attached). It has too much text.
Please:
- Shorten each bullet point to max 8 words
- Remove the least important [NUMBER] points
- Keep the title and highlight box
- [Optional: split into two slides if needed]
```

**What you should get:** A cleaner version of your slide with less text.

**Tip:** A good presentation slide has 3–5 bullet points max. Save the detail for speaker notes.
