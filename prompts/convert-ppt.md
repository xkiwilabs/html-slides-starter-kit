# Prompt Cookbook: Convert PowerPoint to HTML

Ready-to-paste prompts for converting existing PowerPoint slides to reveal.js HTML. Works with any AI assistant.

> **How to provide context:** In a **chatbot** — paste slide content into the chat. In **VS Code** — open your files so the AI sees them. With a **CLI agent** — reference file paths directly (the AI can read your `.pptx` export or notes file). See [build-slides.md](build-slides.md) for a full comparison of the three approaches.

> **Tip:** The more context you provide (content, layout description, colours), the better the conversion.

---

## 1. Describe and Recreate

**When to use:** You're looking at a PowerPoint slide and want to recreate it in HTML.

```
I have a PowerPoint slide with the following content and layout:

Title: [SLIDE TITLE]
Layout: [DESCRIBE — e.g. "two columns, left has bullet points,
right has a bar chart"]
Content:
- [BULLET 1]
- [BULLET 2]
- [BULLET 3]
Image: [DESCRIBE THE IMAGE — e.g. "a bar chart comparing
3 groups"]
Colours: [DESCRIBE — e.g. "blue header, white background"]

Recreate this as a reveal.js slide using my CSS theme (attached).
Choose the closest matching layout classes. Use a placeholder
image at img/placeholder-chart.svg if there's a chart.
```

**What you should get:** A `<section>` block that recreates the PowerPoint slide layout.

**Tip:** You don't need to match the PowerPoint design exactly. The HTML version will look different — and that's fine.

---

## 2. Paste Content and Convert

**When to use:** You want to copy-paste text from PowerPoint directly.

```
Here is the text content copied from my PowerPoint slide:

[PASTE ALL TEXT FROM THE SLIDE HERE]

Convert this into a reveal.js slide using my CSS theme (attached).
Choose the best layout based on the content structure:
- If it's a list → use bullet points with the theme's triangle markers
- If it compares two things → use .two-column with .highlight-box
- If it's a process → use .flow-diagram
- If it's a grid of items → use .grid-2x2

Keep the text concise. If any bullet point is longer than 10
words, shorten it and put the detail in speaker notes.
```

**What you should get:** A slide with appropriate layout chosen by the AI.

---

## 3. Extract Branding from PowerPoint Template

**When to use:** You want to match your institution's PowerPoint brand in HTML.

```
My university's PowerPoint template has these design elements:

Background: [DESCRIBE — e.g. "dark navy gradient"]
Title font: [FONT NAME — check in PowerPoint: Format → Font]
Title colour: [COLOUR — e.g. "white" or "#FFFFFF"]
Accent colour: [COLOUR — used for highlights, borders]
Body font: [FONT NAME]
Logo position: [WHERE — e.g. "top-right corner"]

Update my css/academic-theme.css (attached) to match this
branding. Update the CSS custom properties and gradient.
Suggest the closest Google Font if the PowerPoint font
isn't available as a web font.
```

**What you should get:** An updated CSS file that approximates your PowerPoint branding.

**Tip:** In PowerPoint, go to **View → Slide Master** to see the template's colours and fonts.

---

## 4. Batch Convert an Entire Deck

**When to use:** You have a complete PowerPoint deck to convert.

```
Here is the text content from my entire PowerPoint lecture
(exported from Outline View or copied slide by slide):

[PASTE THE FULL CONTENT HERE]

Convert this into a complete reveal.js HTML deck using my
CSS theme (attached). Apply these rules:

- Slide 1 → class="title-slide"
- Any slide that just has a section heading → class="section-divider"
- Slides with two-way comparisons → .two-column with .highlight-box
- Slides with step-by-step processes → .flow-diagram
- Slides with 4 equal items → .grid-2x2
- Last slide → class="end-slide"
- All other slides → standard bullet layout

Shorten any bullet points longer than 10 words.
Add speaker notes to each slide.
Use reveal.js 5.1.0 from CDN. Link to css/academic-theme.css.
Images: use img/placeholder-chart.svg as placeholder and add
a comment noting which PowerPoint image should go there.
```

**What you should get:** A complete HTML deck with all slides converted.

**Tip:** Export your PowerPoint outline: **View → Outline View**, then select all and copy. This gives you the text in a structured format.

---

## 5. Match a Specific PowerPoint Layout

**When to use:** You want to recreate a particular PowerPoint layout style.

```
I have a PowerPoint slide with this specific layout:

[DESCRIBE THE LAYOUT IN DETAIL — e.g.:
"The slide has a dark blue background. The title is in the
top-left in large white text. Below it are three columns,
each with an icon at the top (I'll use text placeholders),
a heading, and 2-3 bullet points. At the bottom is a thin
gold line with a page number."]

Recreate this layout as closely as possible using reveal.js
and my CSS theme (attached). Use the existing CSS classes
where they fit. If I need custom CSS for any element, add it
as an inline style or suggest additions to the theme.
```

**What you should get:** A slide that closely approximates the PowerPoint layout.

**Tip:** Some PowerPoint layouts (diagonal shapes, overlapping images, complex animations) don't translate well to HTML. Focus on the *content and structure* rather than pixel-perfect replication.
