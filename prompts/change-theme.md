# Prompt Cookbook: Change Theme & Branding

Ready-to-paste prompts for customising colours, fonts, and branding. Works with any AI assistant.

> **Tip:** Attach `css/academic-theme.css` with every prompt so the AI can modify the right variables.

---

## 1. Change Colours

**When to use:** You want to update the colour scheme.

```
Here is my CSS theme file (attached: css/academic-theme.css).
Change the colour scheme to:
- Primary colour: [HEX CODE or description, e.g. "dark red"]
- Accent colour: [HEX CODE or description]
- Keep the dark gradient background but adjust the gradient
  to complement the new primary colour

Update all the CSS custom properties (--theme-*) at the top
of the file. Make sure the gradient, controls, and progress
bar all use the new primary colour.
```

**What you should get:** The same CSS file with updated colour variables.

---

## 2. Extract Brand Colours from a Website

**When to use:** You want to match your university's brand but don't know the exact colours.

```
Go to [YOUR UNIVERSITY WEBSITE URL] and identify:
- Primary brand colour (usually the main header/button colour)
- Secondary/accent colour
- Any dark background colours used

Then update the CSS variables in my academic-theme.css (attached)
to match this branding. Keep the dark gradient style but use
the university's colours. Suggest a matching gradient that
works well with the brand.
```

**What you should get:** Updated CSS variables and a suggested gradient.

**Tip:** If you have a brand guidelines PDF, attach that instead — it has the exact hex codes.

---

## 3. Switch Between Light and Dark

**When to use:** You want a light-background version of the theme.

```
Here is my CSS theme (attached). Create a light-theme variant:
- Background: white or very light grey gradient
- Text: dark charcoal (#2D2D2D)
- Muted text: medium grey
- Keep the same primary accent colour
- Keep all layout classes unchanged
- Ensure highlight boxes still look good on a light background
- Update the print media query for light backgrounds
```

**What you should get:** A modified CSS file with light backgrounds and dark text.

**Tip:** You can keep both versions — name the light one `academic-theme-light.css` and switch between them by changing the `<link>` tag in your HTML.

---

## 4. Change Fonts

**When to use:** You want to use a different typeface.

```
Here is my CSS theme (attached). Change the fonts to:
- Headings: [FONT NAME, e.g. "Lato"]
- Body text: [FONT NAME, e.g. "Source Sans Pro"]
- Code: keep Fira Code

Update the CSS variables (--theme-font-heading, --theme-font-body).
Also update the Google Fonts <link> tag I should use in my HTML:

Current: <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">

Generate the replacement <link> tag for the new fonts with
the correct weights (300, 400, 600, 700, 800).
```

**What you should get:** Updated CSS variables and a new Google Fonts link tag.

---

## 5. Add a Logo

**When to use:** You want to add your institution's logo to slides.

```
I want to add my university logo to my reveal.js slides.
My logo file is at img/my-logo.png. Show me how to:

1. Add it to the title slide (centred, above or below the title)
2. Add it as a small corner logo on all other slides
   (using the .logo class from my theme)
3. Make sure it doesn't overlap with slide content

Give me the HTML to add to each <section> tag.
```

**What you should get:** HTML snippets to paste into your slides.

**Tip:** SVG logos work best — they're sharp at any size. PNG with transparent background is the next best option.

---

## 6. Full Rebrand

**When to use:** You want to completely rebrand the theme for your institution.

```
I'm rebranding my HTML slide deck for [UNIVERSITY/ORGANISATION NAME].

Brand details:
- Primary colour: [HEX]
- Secondary colour: [HEX]
- Background preference: [dark/light]
- Font: [FONT NAME or "use your recommendation"]
- Logo file: img/[FILENAME]

Please update my css/academic-theme.css (attached) with:
1. All CSS custom properties updated to the new brand colours
2. Gradient adjusted to match the brand
3. Font variables updated
4. Any colour-specific highlight box adjustments

Also give me the updated Google Fonts <link> tag if the font
changed, and the HTML for placing the logo on title slides
and content slides.
```

**What you should get:** A fully rebranded CSS file plus HTML snippets for the logo.

**Tip:** After rebranding, open `index.html` in your browser to verify everything looks consistent.
