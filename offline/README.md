# Offline Setup

This folder is for offline reveal.js files when you need to present without internet.

---

## Quick Version

Run the packaging script from the project root:

```bash
# macOS / Linux
bash dev/scripts/package-offline.sh

# Windows (PowerShell)
.\dev\scripts\package-offline.ps1
```

This downloads reveal.js, rewrites all CDN links to local paths, and creates `slides-offline.zip`.

---

## Manual Setup

1. Download reveal.js from [github.com/hakimel/reveal.js/releases](https://github.com/hakimel/reveal.js/releases) (version 5.1.0)
2. Unzip it into a `vendor/reveal.js/` folder in the project root
3. In each HTML file, replace:
   ```
   https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/dist/reveal.css
   → vendor/reveal.js/dist/reveal.css

   https://cdn.jsdelivr.net/npm/reveal.js@5.1.0/dist/reveal.js
   → vendor/reveal.js/dist/reveal.js
   ```
4. Optionally remove Google Fonts `<link>` tags (system fonts will be used instead)

---

## Full Guide

See [guides/offline-packaging.md](../guides/offline-packaging.md) for detailed instructions including font fallback and testing.
