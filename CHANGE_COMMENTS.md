# Change Comments

## 2026-07-29 — Teaching page and navigation

- **Problem:** The English website did not have a top-level Teaching tab or a page for the Fall 2026 course.
- **Root Cause:** No teaching page or navbar entry had been configured.
- **Solution:** Added `teaching.qmd`, populated its Fall 2026 section from `Fall2026.md`, and linked it from `_quarto.yml`. After the initial implementation, removed the second identical “Time and Location” line inherited from the source.
- **Result:** Visitors can open concise Fall 2026 teaching information directly from the English site's top navigation, with the schedule shown once.
- **Files Modified:** `_quarto.yml`, `teaching.qmd` (initial implementation: commit `72084d2`; duplicate removal not yet committed).

## 2026-09-05 — Equal Earth map projection

- **Problem:** The members map used an unprojected longitude/latitude layout that visually exaggerated land areas at high latitudes.
- **Root Cause:** The map's master `World` layer did not specify a projected display CRS, so `tmap` drew the source WGS 84 coordinates directly.
- **Solution:** Set the master map CRS to Equal Earth (`EPSG:8857`); `tmap` reprojects the world polygons and both current/past member point layers together.
- **Result:** The “Where we are from” map now preserves relative land area while retaining the existing locations, colors, sizing, and styling.
- **Files Modified:** `members.qmd` (not yet committed).

## 2026-10-01 — CanViT news item link and logo

- **Problem:** The top News item about CanViT at NeurIPS 2026 had no link to the project page and no visual identifier.
- **Solution:** Linked "CanViT" to the project page `https://m2b3.github.io/CanViT/` (the lowercase `/canvit` path returns 404 because GitHub Pages paths are case-sensitive). Added the official CanViT wordmark (`images/canvit-wordmark.svg`, copied from `m2b3/CanViT` `site/assets/logos/`) at the end of the line, inline at `height=1.3em` so it matches the text line; the logo also links to the project page.
- **Result:** Visitors can jump to the CanViT project page from the home page; the logo fits within the news line.
- **Files Modified:** `index.qmd`, `images/canvit-wordmark.svg`, rendered `docs/` (commits `canvit`).
- **Iteration (2026-10-01):** On the live page the trailing logo rendered larger than the text and wrapped onto its own line. The logo now *replaces* the "CanViT" text link (still linking to the project page), styled `display: inline; height: 1em; width: auto; vertical-align: -0.1em` so it sits on the text baseline at text height. Files: `index.qmd`, rendered `docs/` (not yet committed).

## 2026-10-01 — CanViT link cue and manuscript links in News

- **Problem:** The CanViT wordmark did not look clickable, and several manuscript news items had no link to the paper, or linked only to the preprint after the paper was published.
- **Solution:** Gave the logo a hover/focus effect (brightens, lifts and gets an underline) and a tooltip, and added a "(project page ↗)" text link after it (`.canvit-logo-link`, `.canvit-cue` in `styles.css`). Linked the manuscripts using the URLs on the Output page: meaning maps → bioRxiv, auditory static distractor → arXiv, forward remapping → Journal of Vision DOI. Added the published Communications Biology and Brain Sciences links next to the existing LFP-variability and insula preprint links.
- **Result:** The CanViT link is visible on desktop and touch screens, and every news item about a manuscript now links to the correct version.
- **Files Modified:** `index.qmd`, `styles.css`, rendered `docs/` (not yet committed).
