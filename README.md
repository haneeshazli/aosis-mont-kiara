# AOSIS @ Mont Kiara — Marketing Microsite

An independent marketing portal for the AOSIS @ Mont Kiara residential development,
built as a single-page site in [Claude Design](https://claude.ai/design).

## Contents

| Path | Purpose |
| --- | --- |
| `AOSIS Mont Kiara.dc.html` | Source of truth — the Claude Design document. Edit this. |
| `index.html` | Byte-identical copy of the above, served as the site entry point. |
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

Make changes in the Claude Design project, re-export, and replace
`AOSIS Mont Kiara.dc.html` plus any changed assets. Remember to re-copy the design
file over `index.html` so the two stay in sync:

```bash
cp "AOSIS Mont Kiara.dc.html" index.html
```

## Notes

- Typography is loaded from Google Fonts (Playfair Display + Manrope), so the site
  needs network access to render as designed.
- `.nojekyll` is present so GitHub Pages serves the files verbatim.
- This is an independent portal run by a licensed IQI Realty negotiator. It is not an
  official channel of the developer.
