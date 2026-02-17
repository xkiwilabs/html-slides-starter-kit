# Development Notes

Notes for contributors and maintainers.

---

## Branch Strategy

- **`main`** — Stable, published. This is what users fork and download.
- **`dev`** — Active development. Merge to `main` when ready to publish.
- **Feature branches** — Branch off `dev` for specific changes, then PR back to `dev`.

---

## Scripts

All scripts are in `dev/scripts/`.

### `package-offline.sh` / `package-offline.ps1`

Downloads reveal.js 5.1.0, rewrites CDN paths to local paths in all HTML files, and creates a distributable zip.

```bash
# macOS / Linux
bash dev/scripts/package-offline.sh

# Windows (PowerShell)
.\dev\scripts\package-offline.ps1
```

**Output:** `slides-offline.zip` in the project root.

### `validate-links.sh`

Checks that all external URLs in HTML files are reachable (HTTP 200).

```bash
bash dev/scripts/validate-links.sh
```

---

## Updating reveal.js Version

When a new reveal.js version is released:

1. Update the version number in all HTML files (search for `reveal.js@5.1.0`)
2. Update `REVEAL_VERSION` in both packaging scripts
3. Test all slides in a browser
4. Test the offline packaging script
5. Run `validate-links.sh` to verify CDN URLs

---

## File Conventions

- All HTML files use reveal.js 5.1.0 from CDN
- All HTML files (except `single-slide-template.html`) link to `css/academic-theme.css`
- `single-slide-template.html` has all CSS inline (self-contained)
- Guides are in Markdown (`guides/`)
- Prompt templates are in Markdown (`prompts/`)
- Images go in `img/`

---

## Testing Checklist

Before merging to `main`:

- [ ] `index.html` renders correctly in Chrome, Firefox, Edge, Safari
- [ ] `single-slide-template.html` renders correctly
- [ ] All `examples/*.html` files render correctly
- [ ] `?print-pdf` works on `index.html`
- [ ] Offline packaging script runs without errors
- [ ] All CDN links validated (run `validate-links.sh`)
- [ ] All markdown files render properly on GitHub
- [ ] README links point to correct files
