# Presenting Tips

Everything you need to know about presenting your HTML slides.

---

## Keyboard Shortcuts

| Action | Key |
|--------|-----|
| Next slide | `→` or `Space` or `N` |
| Previous slide | `←` or `Backspace` or `P` |
| First slide | `Home` |
| Last slide | `End` |
| Fullscreen | `F` |
| Speaker view | `S` |
| Overview (all slides) | `O` or `Esc` |
| Zoom into element | `Alt + Click` |
| Pause (black screen) | `B` or `.` |

---

## Going Fullscreen

1. Open your slide deck in the browser
2. Press **F** to enter fullscreen mode
3. Press **Esc** to exit fullscreen

Alternatively, press **F11** (Windows/Linux) or **Ctrl+Cmd+F** (Mac) for browser-level fullscreen.

---

## Speaker Notes

Add notes to any slide using the `<aside class="notes">` tag:

```html
<section>
  <h2>My Slide Title</h2>
  <p>Slide content here...</p>

  <aside class="notes">
    These notes are only visible in Speaker View.
    - Talk about X for 2 minutes
    - Ask the audience about Y
    - Transition to next topic
  </aside>
</section>
```

To see your notes while presenting:
1. Press **S** to open Speaker View
2. A new window opens showing the current slide, next slide, your notes, and a timer
3. Show the **main** browser window on the projector
4. Keep the **speaker view** window on your laptop screen

---

## Connecting to a Projector

1. Connect your laptop to the projector (HDMI, USB-C, or adapter)
2. Set your display to **Extended** (not Mirrored):
   - **Windows:** `Win+P` → Extend
   - **Mac:** System Preferences → Displays → Arrangement → uncheck Mirror
3. Drag the browser window to the projector screen
4. Press **F** for fullscreen on the projector
5. Press **S** for speaker view on your laptop

> **Tip:** Arrive early and test the connection. Lecture hall projectors can be unpredictable.

---

## Using a Clicker / Presenter Remote

Most presenter remotes (Logitech Spotlight, Kensington, etc.) send `→` and `←` key events, which work with reveal.js out of the box. No setup needed.

Test your clicker before the presentation to make sure forward/back work correctly.

---

## Overview Mode

Press **O** (or **Esc**) to see all slides at once in a grid. This is useful for:
- Jumping to a specific slide during Q&A
- Checking your slide order before presenting
- Navigating to a section quickly

Click any slide in the overview to jump to it.

---

## Optional Plugins

reveal.js supports plugins for extra features. Add them by including the plugin script and registering it in the `Reveal.initialize()` call.

**Math (MathJax/KaTeX)**
```html
<script src="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/plugin/math/math.js"></script>
<script>
  Reveal.initialize({
    // ... your existing config ...
    plugins: [RevealMath.MathJax3]  // or RevealMath.KaTeX
  });
</script>
```
Then use LaTeX in your slides: `\( E = mc^2 \)` or `$$ \sum_{i=1}^{n} x_i $$`

**Syntax Highlighting**
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/plugin/highlight/monokai.css">
<script src="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/plugin/highlight/highlight.js"></script>
<script>
  Reveal.initialize({
    plugins: [RevealHighlight]
  });
</script>
```

**Markdown**
```html
<script src="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/plugin/markdown/markdown.js"></script>
<script>
  Reveal.initialize({
    plugins: [RevealMarkdown]
  });
</script>
```
Then write slides in Markdown inside `<section data-markdown>` tags.

---

## Pre-Presentation Checklist

- [ ] Slides load correctly in the browser
- [ ] All images appear (no broken image icons)
- [ ] Projector connected and display extended
- [ ] Speaker view working on laptop screen
- [ ] Clicker/remote tested
- [ ] Backup: PDF export saved on USB drive (see [PDF Export](pdf-export.md))
- [ ] Water bottle within reach
