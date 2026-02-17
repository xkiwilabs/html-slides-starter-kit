# Exporting Slides to PDF

reveal.js has a built-in PDF export mode that renders each slide as a printable page.

---

## Quick Method (Chrome or Edge)

1. Open your slide deck in **Google Chrome** or **Microsoft Edge**
2. Add `?print-pdf` to the end of the URL:
   ```
   file:///path/to/index.html?print-pdf
   ```
   If you're using Live Server, it looks like:
   ```
   http://localhost:5500/index.html?print-pdf
   ```
3. Wait for all slides to load (you'll see them stacked vertically)
4. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac) to open the print dialog
5. Set these options:
   - **Destination:** Save as PDF
   - **Layout:** Landscape
   - **Margins:** None
   - **Background graphics:** Enabled (tick this box!)
6. Click **Save**

> **Important:** You must enable "Background graphics" or your slides will have white backgrounds instead of the dark gradient.

---

## Troubleshooting

**Slides look wrong in print preview**
- Make sure you typed `?print-pdf` correctly (not `#print-pdf`)
- Try a hard refresh: `Ctrl+Shift+R` / `Cmd+Shift+R`
- If using a file:// URL, try using Live Server instead

**Backgrounds are white**
- Enable "Background graphics" in the print dialog
- In Chrome: click "More settings" to find this option

**Text is cut off**
- Your slide content might overflow. Reduce text or font sizes
- Check that your slides don't have content extending beyond the 1920×1080 area

**Fonts look different**
- PDF export uses the fonts available on your system
- If Google Fonts haven't loaded, the system font fallback is used (this is fine — it still looks professional)

---

## Advanced: Decktape

For automated or higher-quality PDF export, [decktape](https://github.com/astefanutti/decktape) is a command-line tool:

```bash
npm install -g decktape
decktape reveal http://localhost:5500/index.html slides.pdf
```

This requires Node.js but produces more consistent results, especially for decks with animations or complex layouts.

---

## Screenshot Fallback

If PDF export doesn't work well for your slides:

1. Open the deck in fullscreen (`F` key)
2. Take a screenshot of each slide (see [presenting tips](presenting-tips.md) for shortcuts)
3. Combine the screenshots into a PDF using your OS's built-in tools or an online service

This is a last resort but guarantees the PDF looks exactly like the presentation.
