# Hearthstone

A dark colour theme for code editors and terminals. Warm charcoal backgrounds
with an earthy syntax palette — orange, mauve, teal, steel, and rose — designed
for long coding sessions and optimised for readability with astigmatism.

## Design principles

- **Backgrounds** derived from Claude.ai's design system: `hsl(60, 2%, n%)` — 
  almost pure grey with a tiny warm yellow tint that prevents the cold-screen feel
- **Three-tier contrast system** for UI chrome, calculated against WCAG standards:
  active text (16:1 AAA), inactive navigation (9.5:1 AAA), decorative labels (3:1)
- **Five syntax accents** with maximum hue separation (75–156° between tokens),
  all passing WCAG AA on the editor background
- **Semantic token assignment**: orange on functions (not keywords) because
  function names carry meaning; mauve on keywords which are structural scaffolding
- Active line uses an orange left-bar accent as a second visual cue beyond
  background shift alone — more reliable for astigmatism

## Palette

### Backgrounds

| Role                  | Hex       | Lightness |
|-----------------------|-----------|-----------|
| Sidebar / tab bar     | `#212120` | 13% L     |
| Terminal panel        | `#1f1f1e` | 12% L     |
| Editor surface        | `#1c1c1b` | 11% L     |
| Active line highlight | `#252523` | 14% L     |

### Text tiers

| Role                  | Hex       | Contrast on editor | WCAG  |
|-----------------------|-----------|--------------------|-------|
| Primary text          | `#f8f8f6` | 16.0:1             | AAA ✓ |
| Inactive tabs / files | `#c3c2b7` | 9.5:1              | AAA ✓ |
| Comments              | `#686866` | 3.1:1              | AA lg |
| Line numbers / labels | `#6a6a68` | 3.1:1              | AA lg |

### Syntax accents

| Role                   | Hex       | Hue  | Contrast | WCAG |
|------------------------|-----------|------|----------|------|
| Mauve · keywords       | `#b888c8` | 285° | 6.0:1    | AA ✓ |
| Teal · strings         | `#80c0b0` | 165° | 8.2:1    | AAA ✓|
| Orange · functions     | `#e07838` | 23°  | 5.6:1    | AA ✓ |
| Steel · variables      | `#7a8a9a` | 210° | 4.8:1    | AA ✓ |
| Rose · errors          | `#c86878` | 350° | 4.6:1    | AA ✓ |

### UI accents

| Role                  | Value              |
|-----------------------|--------------------|
| Active tab underline  | `#e07838`          |
| Cursor                | `#e07838`          |
| Active line left bar  | `#e07838` @ 45%    |
| Selection background  | `#252523`          |

## ANSI terminal palette (16 colours)

| Index | Role           | Hex       | Notes                        |
|-------|----------------|-----------|------------------------------|
| 0     | Black          | `#212120` | Sidebar bg — contextual dark |
| 1     | Red            | `#c86878` | Rose error                   |
| 2     | Green          | `#80c0b0` | Teal — git additions         |
| 3     | Yellow         | `#e07838` | Orange — git modified        |
| 4     | Blue           | `#7a8a9a` | Steel                        |
| 5     | Magenta        | `#b888c8` | Mauve                        |
| 6     | Cyan           | `#80c0b0` | Teal                         |
| 7     | White          | `#c3c2b7` | Inactive text                |
| 8     | Bright black   | `#686866` | Comments / dim               |
| 9     | Bright red     | `#d898a8` | Lighter rose                 |
| 10    | Bright green   | `#a0d0c0` | Lighter teal                 |
| 11    | Bright yellow  | `#f09848` | Brighter orange              |
| 12    | Bright blue    | `#9aaabb` | Lighter steel                |
| 13    | Bright magenta | `#c8a0d8` | Lighter mauve                |
| 14    | Bright cyan    | `#a0d0c0` | Lighter teal                 |
| 15    | Bright white   | `#f8f8f6` | Primary text                 |

## Visual reference

Open `reference/hearthstone-final.html` in a browser for a full rendered mockup
with syntax-highlighted code, sidebar, tabs, and terminal.

## Installation

### Ghostty

Copy `ghostty/hearthstone` to `~/.config/ghostty/themes/` then set in your
Ghostty config:

```
theme = hearthstone
```

### VS Code

_Coming soon._

### Zed

_Coming soon._

### Neovim

_Coming soon._

### Emacs

_Coming soon._
