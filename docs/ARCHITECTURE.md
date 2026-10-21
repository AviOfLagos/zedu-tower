# Architecture

## Page inventory (max 3)
| Route | Job | Primary action | Indexed |
|---|---|---|---|
| `/` | Explain the idea in one screen; show the four ways to reach someone, notifications, FAQ | Open the prototype | Yes |
| `/guide/` | How to read and test the prototype (formerly `docs.html`) | Open the prototype | Yes |
| `/app/` | The prototype itself (formerly `/`) | — | No (`noindex` not needed yet; canonical set) |

Redirects: `/docs.html` → `/guide/` (permanent) so shared links keep working.

## Stack decision
Static HTML, CSS and vanilla JS, no framework or build step beyond `build.sh`.
Signals: every public URL must unfurl (content in initial HTML) → rules out a client-only SPA; no CMS, no auth, three pages → a framework adds weight without benefit. Motion is CSS plus small rAF loops; no animation library.

## Metadata
Each page has its own title, description, canonical, OG and Twitter tags pointing at `og.png` (1200×630).

## Quality gates in v1
Keyboard focus visible; contrast in both themes; `prefers-reduced-motion` respected; no horizontal scroll at 360px; no console errors.

## Responsive
The focus window follows the pointer on desktop and drifts between rooms on touch. The floor plan in "The map" scales with its viewBox. The accordion stacks above its scene under 900px.
