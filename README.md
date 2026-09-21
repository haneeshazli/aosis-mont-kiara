# AOSIS @ Mont Kiara — Marketing Microsite

An independent marketing portal for the AOSIS @ Mont Kiara residential development,
built as a single-page site in [Claude Design](https://claude.ai/design).

## Contents

| Path | Purpose |
| --- | --- |
| `AOSIS Mont Kiara.dc.html` | Source of truth — the Claude Design document. Edit this. |
| `index.html` | Self-contained standalone export of the latest design (all images bundled inline). This is what the live site serves. |
| `support.js` | Generated Claude Design runtime. Do not edit by hand. |
| `assets/plan-*.png` | Floor plan drawings (Types A–D, including the Type D dual-key layout). |
| `assets/web/*.jpg` | Photography and renders for the hero, facilities, interiors and site plan. |

## Sections

`#top` · `#concept` · `#location` · `#plans` · `#facilities` · `#interiors` · `#faq` ·
`#register` · `#contact`

## Running locally

All asset paths are relative, so any static server works:

```bash
python3 -m http.server 8000
```

Then open <http://localhost:8000>.

Opening `index.html` directly off the filesystem also works, though some browsers
restrict `file://` requests.

## Editing

Make changes in the Claude Design project, export a standalone HTML, and replace
`index.html` with it. Pushing to `main` redeploys the site on Vercel.

Note: `AOSIS Mont Kiara.dc.html` and `assets/` are from an earlier export and may lag
behind `index.html`.

## Notes

- Typography is loaded from Google Fonts (Playfair Display + Manrope), so the site
  needs network access to render as designed.
- `.nojekyll` is present so GitHub Pages serves the files verbatim.
- This is an independent portal run by a licensed IQI Realty negotiator. It is not an
  official channel of the developer.
