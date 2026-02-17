# Using AI Assistants to Build Slides

You don't need to know HTML to create beautiful slides. AI assistants can generate, modify, and troubleshoot your slide code for you.

This guide is **tool-agnostic** — the workflow works with VS Code Copilot (any model), Gemini CLI, Codex, Claude, ChatGPT, or any other AI assistant.

---

## The Workflow: Plan → Generate → Verify

### 1. Plan
Decide what you want on the slide *before* prompting. Think about:
- What's the main message?
- What layout works best? (bullets, two-column, diagram, image)
- What content goes where?

### 2. Generate
Give the AI a clear, specific prompt. The more context you provide, the better the result.

### 3. Verify
- Open the HTML file in your browser and check it looks right
- Read through the generated code to make sure nothing is broken
- Test navigation (arrow keys) and any animations

---

## How to Provide Good Context

The single most important thing you can do is **give the AI your existing files** so it matches your style.

**In a chatbot (Claude, ChatGPT, Gemini):**
- Paste the contents of `css/academic-theme.css`
- Paste an existing slide as an example
- Say: "Here is my CSS theme and an example slide. Create a new slide that..."

**In VS Code (Copilot, agent mode):**
- Open `css/academic-theme.css` and your current slide file
- The AI can see your open files as context
- Use the chat panel: "Add a two-column slide comparing X and Y using my theme classes"

**In a CLI tool (Gemini CLI, Claude Code, Codex):**
- Run the tool from your project folder — it can read your files directly
- Reference files by path: "Using the theme in css/academic-theme.css, create..."

---

## Example Prompts

Here are prompts that work well. See `prompts/` for a comprehensive cookbook.

### Create a new slide
```
Create a reveal.js slide about [TOPIC] using the classes from
css/academic-theme.css. Use a two-column layout with highlight
boxes. Keep the text concise — bullet points, not paragraphs.
```

### Convert lecture notes to slides
```
Here are my lecture notes for [TOPIC]. Convert them into a
reveal.js slide deck using my CSS theme (attached). Use
appropriate layouts for each section — title slide, bullet
slides, comparison slides where I compare two things, and a
summary slide at the end.
```

### Fix or modify a slide
```
Here is my current slide (attached). Change the layout from
a single column to a two-column comparison. Keep all the
existing content but reorganise it.
```

### Add speaker notes
```
Add speaker notes to each slide in my deck. The notes should
include talking points, timing suggestions, and any questions
to ask the audience.
```

---

## Tips

- **Be specific about layout:** "two-column with blue highlight box on the left" works better than "make it look nice"
- **Iterate:** Get a first version, then refine with follow-up prompts
- **Use examples:** Point the AI to `examples/` for the kind of layout you want
- **Don't paste screenshots:** Paste the actual HTML code — AI assistants work much better with text
- **Check the CSS classes:** Look at `css/academic-theme.css` for available classes like `.highlight-box`, `.flow-diagram`, `.grid-2x2`, etc.

---

## Prompt Cookbook

For a complete library of ready-to-paste prompts, see:
- [Build slides from scratch](../prompts/build-slides.md) — 10 prompts
- [Modify layouts](../prompts/modify-layouts.md) — 7 prompts
- [Change theme and branding](../prompts/change-theme.md) — 6 prompts
- [Convert from PowerPoint](../prompts/convert-ppt.md) — 5 prompts
