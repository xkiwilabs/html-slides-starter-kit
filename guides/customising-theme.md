# Customising the Theme

The file `css/academic-theme.css` controls the look of every slide. By changing a handful of CSS variables, you can rebrand the entire deck for your university or organisation.

---

## The Control Panel: CSS Variables

Open `css/academic-theme.css` and look at the top of the file. You'll see a block like this:

```css
:root {
  --theme-primary: #2563EB;        /* Main accent colour */
  --theme-primary-dark: #1E40AF;   /* Darker variant */
  --theme-accent: #D97706;         /* Secondary accent */
  --theme-charcoal: #2D2D2D;       /* Text on light backgrounds */
  --theme-dark: #1A1A2E;           /* Darkest background */
  --theme-light-text: #F0F0F0;     /* Primary text colour */
  --theme-muted-text: #B0B0C0;     /* Secondary text */
}
```

**Change these values and the entire theme updates.** Every colour, border, and highlight in the deck references these variables.

---

## Quick Rebrand (5 Minutes)

To match your university's brand, you only need to change **3 things**:

### 1. Primary colour
Replace `#2563EB` with your university's main brand colour:
```css
--theme-primary: #YOUR_COLOUR;
--theme-primary-dark: #DARKER_VARIANT;
```

### 2. Background gradient
Find the `--theme-gradient` line and update it:
```css
--theme-gradient: linear-gradient(135deg, #1A1A2E 0%, #16213E 50%, #YOUR_DARK_COLOUR 100%);
```

### 3. Logo
Replace `img/placeholder-logo.svg` with your university logo:
```html
<img src="img/your-logo.png" class="logo" alt="University Name">
```

---

## Changing Fonts

The default font is Inter (loaded from Google Fonts, with system font fallback).

To use a different Google Font:

1. Go to [fonts.google.com](https://fonts.google.com/)
2. Select a font and copy the `<link>` tag
3. Replace the existing Google Fonts link in your HTML files
4. Update the CSS variables:
```css
--theme-font-heading: 'Your Font', system-ui, sans-serif;
--theme-font-body: 'Your Font', system-ui, sans-serif;
```

**Common academic-friendly fonts:** Lato, Source Sans Pro, Roboto, Nunito Sans, Open Sans

---

## Adding Your Logo

The `.logo` class positions an image in the top-right corner of a slide:

```html
<img src="img/your-logo.png" class="logo" alt="University Name">
```

Variants:
- `class="logo"` — top-right (default)
- `class="logo left"` — top-left
- `class="logo large"` — larger version (80px tall)

**Best format:** SVG or PNG with transparent background. Keep the file under 100KB.

---

## Light Theme

The default is a dark gradient. For a light theme, override the key variables:

```css
:root {
  --theme-dark: #FFFFFF;
  --theme-light-text: #2D2D2D;
  --theme-muted-text: #666666;
  --theme-gradient: linear-gradient(135deg, #F8F9FA 0%, #E9ECEF 50%, #DEE2E6 100%);
}
```

Or ask an AI assistant:
```
Convert my css/academic-theme.css from a dark theme to a light
theme. Keep the same primary accent colour and layout classes.
Make backgrounds white/light grey, and text dark.
```

---

## Using AI to Extract Brand Colours

If you're not sure what your university's exact colours are:

```
Go to [YOUR UNIVERSITY WEBSITE URL] and extract the brand
colours. Then update the CSS variables in my academic-theme.css
to match. Keep the dark gradient background style but use the
university's primary and accent colours.
```

---

## Available CSS Classes

Here's a quick reference of the layout and style classes in the theme:

| Class | What it does |
|-------|-------------|
| `.title-slide` | Centred title page layout |
| `.section-divider` | Section break with large number |
| `.end-slide` | End/summary slide |
| `.think-slide` | Purple-tinted discussion prompt |
| `.discussion-slide` | Green-tinted discussion prompt |
| `.two-column` | Two equal columns |
| `.two-column.wide-left` | Left column wider |
| `.two-column.wide-right` | Right column wider |
| `.three-column` | Three equal columns |
| `.grid-2x2` | 2×2 grid with coloured borders |
| `.highlight-box.blue` | Blue highlight box |
| `.highlight-box.green` | Green highlight box |
| `.highlight-box.gold` | Gold highlight box |
| `.highlight-box.red` | Red highlight box |
| `.highlight-box.purple` | Purple highlight box |
| `.highlight-box.orange` | Orange highlight box |
| `.flow-diagram` | Horizontal flow chart |
| `.flow-step` | Individual step in a flow |
| `.tag.blue` (etc.) | Small coloured badge/tag |
| `.small` / `.smaller` | Reduced text size |
| `.muted` | Dimmed text colour |
| `.spacer` / `.spacer-large` | Vertical spacing |
| `.attribution` | Bottom-right source citation |
| `.logo` | Corner logo placement |
