# Change Comments

## 2026-07-29 — Teaching page and navigation

- **Problem:** The English website did not have a top-level Teaching tab or a page for the Fall 2026 course.
- **Root Cause:** No teaching page or navbar entry had been configured.
- **Solution:** Added `teaching.qmd`, populated its Fall 2026 section from `Fall2026.md`, and linked it from `_quarto.yml`. After the initial implementation, removed the second identical “Time and Location” line inherited from the source.
- **Result:** Visitors can open concise Fall 2026 teaching information directly from the English site's top navigation, with the schedule shown once.
- **Files Modified:** `_quarto.yml`, `teaching.qmd` (initial implementation: commit `72084d2`; duplicate removal not yet committed).
