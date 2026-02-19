# Present Without Internet

**Or if presenting on an unknown computer.**

By default your slides load reveal.js from the internet. If the venue has no Wi-Fi, the Wi-Fi is unreliable, or you're presenting on a computer you haven't tested — your slides won't work.

> **Our recommendation:** Always package your slides for offline use before any presentation. It takes 30 seconds and guarantees your slides will work no matter what. Following the steps below means your slides will always work — don't risk showing up and having them fail.

---

## Quick Version

Run the packaging script from the project root:

```bash
# macOS / Linux
bash dev/scripts/package-offline.sh

# Windows (PowerShell)
.\dev\scripts\package-offline.ps1
```

This downloads reveal.js, rewrites all CDN links to local paths, and creates `slides-offline.zip`. Copy this zip to a USB drive and you're set.

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
