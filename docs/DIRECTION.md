# Direction

## References
- **Category (constraints, not models):** Gather, Kumospace, Teamflow, SoWork, Tandem, Slack huddles, Teams Together mode. Category default: playful pixel or isometric worlds, bright gradients, "metaverse office" energy. Convention kept: show the space immediately; one primary CTA.
- **Mood board** (Avi's Pinterest "Web: UI design -nr", 13 pins) + a frosted-glass card reference:
  - Stacked frosted cards with a peeking back plate (attached card) → hero frame and notification scene.
  - Two-tone headlines, ink line then grey line (pins 7, 12) → all section heads.
  - Accordion list with one dark active row (pin 7) → "Four ways to reach someone".
  - Deep evergreen surfaces with a lime highlight (pins 1, 5, 8, 13) → palette.
  - Small illustrations living inside UI (plane on clouds, pixel trees) → walkers in the footer street.
  - Two-column FAQ cards (pin 12) → FAQ.
- **Adjacent donor:** airport wayfinding. Structural map: terminal → workspace, gate → channel, departures board → notifications, "you are here" → your office. Took: one strong "you are here" marker and plain labels on everything.

## Pole rejected
The metaverse-office look (pixel avatars, game HUDs, saturated purple). Zedu Tower is calm infrastructure for work, closer to an architect's model under glass than a game.

## Signature move
**The focus window.** The hero is a living cutaway tower under frosted glass. A sharp window follows the cursor (and drifts on its own on touch) and names what you're looking at in Zedu terms. It is the product's own focus feature, so the site demonstrates the product instead of describing it.

## Supporting system
- Light comes from the top; one shadow direction; glass edges are 1px white at 85%.
- Background: misty blue-grey gradient in the hero only; the rest sits on fog.
- Lime is reserved for things that are live (presence dots, the active check, the "open" dot on the CTA).

## Tokens
| Token | Light | Dark |
|---|---|---|
| fog (ground) | #EEF2F1 | #0C1416 |
| ink | #13201D | #E6EEEC |
| ink-2 | #5B6B68 | #93A4A1 |
| evergreen (accent) | #0E5A4C | #2FA488 |
| lime (live) | #D6F26A | #D6F26A |
| mist gradient | #5F8CA6 → #A9C2D1 → #E3EBEE | #0B1A24 → #132732 → #0C1416 |

Type: Familjen Grotesk 500 for display (tracking −0.035em), Figtree 400/500 for body. Same pair as the app.

## Motion budget
One orchestrated load: floors light up bottom to top, then people step out. Everything else answers the user (window follows pointer, accordion swaps its scene, DND toggle collapses cards, walkers pause on hover). Reduced motion: static tower, window parked on F5, walkers stand still.
