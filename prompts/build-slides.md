# Prompt Cookbook: Build Slides from Scratch

Ready-to-paste prompts for creating new slides. Works with any AI assistant.

## Three ways to use these prompts

How you provide context depends on which kind of tool you're using:

| Tool type | Examples | How to provide files |
|-----------|---------|---------------------|
| **Chatbot** | Claude, ChatGPT, Gemini | Paste file contents into the chat, or attach files |
| **VS Code / editor** | Copilot, Cline, Continue | Open files in the editor — the AI sees them automatically |
| **CLI / coding agent** | Claude Code, Gemini CLI, Codex | Reference files by path — the AI reads them directly |

The prompts below say "(attached)" for file context. Adapt this for your tool:
- **Chatbot:** paste `css/academic-theme.css` into the chat
- **VS Code:** open `css/academic-theme.css` in a tab
- **CLI agent:** the AI already has access — just reference the path `css/academic-theme.css`

> **Tip:** For CLI tools and VS Code agents, you can reference files by path instead of pasting. For example: *"Read css/academic-theme.css and use those classes to create a new slide."*

---

## 1. Single Starter Slide

**When to use:** You want one quick slide to start with.

```
Create a single reveal.js HTML slide for a lecture presentation.
Use the reveal.js CDN (version 5.1.0). Dark gradient background.
Title at the top, then a 2×2 grid of content areas with coloured
left borders. Clean, professional design. Include all CSS inline
so the entire slide is one HTML file.
```

**What you should get:** A self-contained HTML file with one slide, similar to `single-slide-template.html`.

**Tip:** This is the starter prompt from the blog post. It works without any existing files.

---

## 2. Full Lecture Deck

**When to use:** You have a topic and want a complete set of slides.

```
Create a reveal.js lecture deck on [TOPIC] with these slides:
1. Title slide (title, subtitle, author, institution)
2. Agenda/overview slide
3-6. Content slides covering [LIST KEY TOPICS]
7. Summary/takeaways slide
8. Questions/end slide

Use my CSS theme (attached) and these classes:
- Title: class="title-slide"
- Section breaks: class="section-divider"
- End slide: class="end-slide"
- Comparisons: use .two-column with .highlight-box
- Processes: use .flow-diagram

Include speaker notes for each slide.
Use reveal.js 5.1.0 from CDN. Link to css/academic-theme.css.
```

**What you should get:** A complete HTML file with 8 slides, ready to present.

**Tip:** Replace `[TOPIC]` and `[LIST KEY TOPICS]` with your actual content.

---

## 3. Title Slide

**When to use:** You need just the opening slide.

```
Create a reveal.js title slide using my CSS theme (attached).
Use class="title-slide". Include:
- Title: [YOUR TITLE]
- Subtitle: [YOUR SUBTITLE]
- Author: [YOUR NAME]
- Affiliation: [DEPARTMENT, UNIVERSITY]
- Date: [SEMESTER/DATE]
- Logo placeholder: <img src="img/placeholder-logo.svg" class="logo">
```

**What you should get:** A `<section class="title-slide">` block.

---

## 4. Section Divider

**When to use:** You want a visual break between lecture sections.

```
Create a reveal.js section divider slide using my CSS theme.
Use class="section-divider". Section number: [NUMBER].
Title: [SECTION TITLE]. Brief description: [ONE SENTENCE].
```

**What you should get:** A centred slide with a large section number and title.

---

## 5. Bullet Point Slide

**When to use:** You have a list of points to present.

```
Create a reveal.js slide with the title "[TITLE]" and these
bullet points:
- [POINT 1]
- [POINT 2]
- [POINT 3]
- [POINT 4]

Use my CSS theme (attached). Use the default list styling
(triangle bullets). Add a highlight box below the list with
a key takeaway.
```

**What you should get:** A clean slide with styled bullets and a highlight box.

---

## 6. Image + Text Slide

**When to use:** You want to pair an image or chart with explanatory text.

```
Create a reveal.js two-column slide using my CSS theme.
Use class="image-slide" and the .two-column layout.
- Left column: title "[TITLE]" and bullet points about [TOPIC]
- Right column: image placeholder at img/[FILENAME]
  with a caption below

Add class="rounded shadow" to the image.
```

**What you should get:** A two-column layout with text left and image right.

---

## 7. Flow Diagram Slide

**When to use:** You want to show a process or sequence.

```
Create a reveal.js slide showing a [NUMBER]-step process
using the .flow-diagram and .flow-step classes from my CSS theme.

Steps:
1. [STEP 1] — [DESCRIPTION]
2. [STEP 2] — [DESCRIPTION]
3. [STEP 3] — [DESCRIPTION]
[etc.]

Use different colours for each step (blue, green, orange, purple, red).
Add arrows (→) between steps.
```

**What you should get:** A horizontal flow diagram with numbered, coloured steps.

---

## 8. Figure/Chart Slide

**When to use:** You want to display a Python/R-generated figure.

```
Create a reveal.js slide for displaying a research figure.
Use my CSS theme. Centre the figure on the slide with:
- Title: "[FIGURE TITLE]"
- Image placeholder: img/[FILENAME] (or a base64 placeholder)
- Caption below: "[YOUR CAPTION]"
- Add class="rounded shadow" to the image
- Max height of 650px
```

**What you should get:** A centred slide focused on a large figure with caption.

---

## 9. Add Speaker Notes

**When to use:** You want to add presenter-only notes to existing slides.

```
Here is my slide deck (attached). Add <aside class="notes">
tags to each slide with:
- 2-3 talking points per slide
- Approximate timing (e.g. "spend 3 minutes here")
- Transition cue to the next slide
- Any audience questions to ask
```

**What you should get:** Your existing deck with speaker notes added to each `<section>`.

**Tip:** Press `S` during the presentation to see speaker notes.

---

## 10. Convert My Outline to Slides

**When to use:** You have lecture notes or an outline and want slides generated.

**Chatbot version** (paste content into the chat):
```
Here is my lecture outline for [TOPIC]:

[PASTE YOUR OUTLINE HERE]

Convert this into a reveal.js HTML deck using my CSS theme
(attached). For each section:
- Use title-slide for the opening
- Use section-divider for major topic transitions
- Use appropriate layouts (bullets, two-column, flow-diagram,
  grid, highlight boxes) based on the content
- Use end-slide for the final slide
- Add speaker notes

Keep bullet points concise (max 8 words per point).
Use reveal.js 5.1.0 from CDN. Link to css/academic-theme.css.
```

**VS Code / CLI agent version** (reference files by path):
```
Read my lecture notes at [PATH/TO/notes.md] and the CSS theme
at css/academic-theme.css. Convert the notes into a reveal.js
HTML deck saved as index.html. For each section:
- Use title-slide for the opening
- Use section-divider for major topic transitions
- Use appropriate layouts (bullets, two-column, flow-diagram,
  grid, highlight boxes) based on the content
- Use end-slide for the final slide
- Add speaker notes

Keep bullet points concise (max 8 words per point).
Use reveal.js 5.1.0 from CDN. Link to css/academic-theme.css.
```

**What you should get:** A complete slide deck structured from your outline.

**Tip:** The more structured your outline, the better the result. Use headings and sub-points.
