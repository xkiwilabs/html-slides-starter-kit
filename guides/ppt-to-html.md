# PowerPoint → HTML Conversion

Already have slides in PowerPoint? Here are three approaches to convert them to HTML, from simplest to most thorough.

---

## Approach 1: Describe and Recreate

Best for: Decks with 5–15 slides where you want to start fresh.

1. Open your PowerPoint file
2. For each slide, **describe what you see** to an AI assistant:

```
I have a PowerPoint slide with:
- Title: "Literature Review Process"
- A flow diagram with 4 steps: Search → Screen → Extract → Synthesise
- Each step has a short description underneath
- Blue colour scheme

Create a reveal.js version of this slide using the classes from
my css/academic-theme.css file (attached). Use the flow-diagram
layout with coloured steps.
```

3. Copy the generated HTML into your deck
4. Repeat for each slide

---

## Approach 2: Paste Content Directly

Best for: Text-heavy slides where the content is more important than the layout.

1. Open PowerPoint
2. Select all text on a slide and copy it
3. Paste it into your AI prompt:

```
Here is the text content from my PowerPoint slide:

[PASTE YOUR SLIDE TEXT HERE]

Convert this into a reveal.js slide that uses my CSS theme
(attached). Choose an appropriate layout — bullet list, two-column,
highlight boxes, or grid — based on the content structure.
```

---

## Approach 3: Batch Convert

Best for: Large decks (20+ slides) where you want to convert everything at once.

1. Export your PowerPoint to text:
   - In PowerPoint: **File → Save As → Outline/RTF** (or copy all text from Outline View)
2. Paste the entire outline into an AI assistant:

```
Here is the full outline of my 25-slide PowerPoint lecture on
[TOPIC]. Convert it into a complete reveal.js HTML deck using
my CSS theme (attached).

For each slide, choose the best layout:
- Title slides → use class="title-slide"
- Section breaks → use class="section-divider"
- Bullet points → standard list layout
- Comparisons → use two-column with highlight boxes
- Processes → use flow-diagram layout
- Summary → use class="end-slide"

Include speaker notes based on the content.
```

---

## Extracting Branding from PowerPoint

If your PowerPoint uses university branding, you can extract it:

1. In PowerPoint, go to **View → Slide Master**
2. Note the colours used for:
   - Background
   - Title text
   - Accent/highlight colour
   - Body text
3. Give these to an AI:

```
My university PowerPoint template uses these colours:
- Primary: [COLOUR]
- Background: dark navy (#1a2332)
- Accent: gold (#c4a35a)
- Body text: white

Update the CSS variables in css/academic-theme.css to match
this branding.
```

Or even simpler:

```
Here is a screenshot of my university's PowerPoint template.
Extract the colour scheme and update css/academic-theme.css
to match it.
```

---

## Tips

- **Don't try to replicate PowerPoint exactly.** HTML slides have different strengths — embrace the cleaner, more structured layouts
- **Simplify as you convert.** If a PowerPoint slide has 8 bullet points, consider splitting it into two slides
- **Add structure.** PowerPoint decks often lack section dividers and flow — this is a chance to add them
- **Keep images.** Save images from PowerPoint (right-click → Save as Picture) and put them in the `img/` folder
- **Test as you go.** Convert a few slides, check them in the browser, then continue

---

## See Also

- [AI prompt templates for conversion](../prompts/convert-ppt.md) — 5 ready-to-use prompts
- [Customising the theme](customising-theme.md) — match your university branding
