# Offline Packaging

By default, your slides load reveal.js and fonts from the internet (CDN). If you need to present without internet access — a common situation in lecture halls — you'll need to package everything locally.

---

## Do You Need This?

**Yes — we recommend always packaging offline.** It takes 30 seconds and guarantees your slides will work regardless of the venue's internet. Don't risk showing up and having your slides fail because the Wi-Fi is down, slow, or blocked.

This is especially important if:
- You're presenting on an unknown or shared computer
- The venue has no internet or unreliable Wi-Fi (conference centres, older buildings)
- You're distributing slides on a USB drive
- You simply want peace of mind that your slides will always work

> **Bottom line:** Following the steps below means your presentation will work every time. The CDN approach is fine for editing at home, but always package offline before you present.

---

## Method 1: Automated Script (Easiest)

Run the provided packaging script from the project root:

**macOS / Linux:**
```bash
bash dev/scripts/package-offline.sh
```

**Windows (PowerShell):**
```powershell
.\dev\scripts\package-offline.ps1
```

This downloads reveal.js, rewrites the CDN links in your HTML files to point to local copies, and creates a zip file you can carry on a USB drive.

---

## Method 2: Manual Download

1. **Download reveal.js:**
   - Go to [github.com/hakimel/reveal.js/releases](https://github.com/hakimel/reveal.js/releases)
   - Download the latest 5.1.x release zip
   - Unzip it into a `vendor/` folder in your project:
     ```
     html-slides-starter-kit/
     ├── vendor/
     │   └── reveal.js/
     │       ├── dist/
     │       │   ├── reveal.css
     │       │   └── reveal.js
     │       └── ...
     ```

2. **Update your HTML files** — change the CDN links to local paths:
   ```html
   <!-- BEFORE (CDN) -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/dist/reveal.css">
   <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/dist/reveal.js"></script>

   <!-- AFTER (local) -->
   <link rel="stylesheet" href="vendor/reveal.js/dist/reveal.css">
   <script src="vendor/reveal.js/dist/reveal.js"></script>
   ```

3. **Test:** Disconnect from the internet, open the file in your browser, and verify everything works.

---

## Method 3: AI-Assisted

Paste your HTML file into an AI assistant and ask:

```
Rewrite all CDN URLs in this HTML file to use local paths.
Assume reveal.js is at vendor/reveal.js/dist/.
Remove the Google Fonts links and rely on system fonts.
```

---

## Font Fallback

The theme is designed with a **system font stack** as fallback:

```css
font-family: 'Inter', 'Segoe UI', system-ui, -apple-system, sans-serif;
```

This means:
- **With internet:** Google Fonts (Inter) loads and is used
- **Without internet:** The system uses Segoe UI (Windows), SF Pro (Mac), or the system default
- **Either way:** Slides look clean and professional

You don't need to download fonts separately unless you want pixel-perfect consistency across platforms.

---

## Testing Offline Mode

1. Package your slides (Method 1, 2, or 3)
2. Turn off Wi-Fi / disconnect from the internet
3. Open the HTML file in your browser
4. Verify: slides load, transitions work, images appear
5. Reconnect when satisfied
