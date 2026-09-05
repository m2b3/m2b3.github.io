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
