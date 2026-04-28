# Hearthstone

A dark colour theme for code editors and terminals. Warm charcoal backgrounds
with an earthy syntax palette — orange, mauve, sage, steel, and rose — designed
for long coding sessions.

## Design principles

- **Backgrounds** derived from Claude.ai's design system: `hsl(60, 2%, n%)` — 
  almost pure grey with a tiny warm yellow tint that prevents the cold-screen feel
- **Three-tier contrast system** for UI chrome, calculated against WCAG standards:
  emphasis text (16:1 AAA), editor body and inactive navigation (9.5:1 AAA),
  decorative labels (3:1)
- **Five syntax accents** spread across the colour wheel (mauve 285°, steel 210°,
  sage 95°, orange 23°, rose 350°), all passing WCAG AA on the editor background
- **Semantic token assignment**: three-way split — orange for named
  identifiers (functions, types, properties, structural keys in JSON/YAML/CSS,
  markdown headings); mauve for structural keywords and language constructs;
  sage for literal values (strings, numbers, enum members)
- **Active line** marked by background lift only (`#252523`) — no coloured
  outline or left-bar accent, to keep the editor surface quiet

## Palette

### Backgrounds

| Role                  | Hex       | Lightness |
|-----------------------|-----------|-----------|
| Sidebar / tab bar     | `#212120` | 13% L     |
| Terminal panel        | `#1f1f1e` | 12% L     |
| Editor surface        | `#1c1c1b` | 11% L     |
| Active line highlight | `#252523` | 14% L     |
| Chrome borders        | `#2a2a28` | 16% L     |
| Indent guides / secondary highlight | `#2e2e2c` | 18% L |

### Text tiers

| Role                          | Hex       | Contrast on editor | WCAG  |
|-------------------------------|-----------|--------------------|-------|
| Emphasis text · active tabs   | `#f8f8f6` | 16.0:1             | AAA ✓ |
| Editor body · inactive tabs   | `#c3c2b7` | 9.5:1              | AAA ✓ |
| Operators / punctuation       | `#888884` | 5.0:1              | AA ✓  |
| Comments / chrome labels      | `#686866` | 3.1:1              | AA lg |

### Syntax accents

| Role                   | Hex       | Hue  | Contrast | WCAG |
|------------------------|-----------|------|----------|------|
| Mauve · keywords       | `#b888c8` | 285° | 6.0:1    | AA ✓ |
| Sage · strings         | `#a0c088` | 95°  | 8.3:1    | AAA ✓|
| Orange · functions     | `#e07838` | 23°  | 5.6:1    | AA ✓ |
| Steel · variables      | `#7a8a9a` | 210° | 4.8:1    | AA ✓ |
| Rose · errors          | `#c86878` | 350° | 4.6:1    | AA ✓ |

### Bright variants

| Role          | Hex       | Used for                                          |
|---------------|-----------|---------------------------------------------------|
| Bright orange | `#f09848` | Hover states, button hover, ANSI bright yellow/blue |
| Bright sage   | `#b8d0a0` | String escape sequences, link active, ANSI bright green/cyan |
| Bright mauve  | `#c8a0d8` | ANSI bright magenta                               |
| Bright rose   | `#d898a8` | ANSI bright red                                   |

### UI accents

| Role                  | Value              |
|-----------------------|--------------------|
| Active tab underline  | `#e07838`          |
| Activity bar accent   | `#c05828` (darker variant — see optical note) |
| Cursor                | `#e07838`          |
| Selection background  | `#2e2e2c` (neutral brightness lift, no hue) |

## ANSI terminal palette (16 colours)

Slots 4 and 12 are deliberately remapped from blue to orange to support
Powerlevel10k's `DIR_FOREGROUND` and related segment colours. This means
directory paths and Powerlevel10k status segments render in the theme's
signature orange rather than an out-of-palette blue. The tradeoff: tools
that hard-code ANSI 4 = blue semantics (some diff viewers, `ls` colour
schemes, etc.) will display those colours as orange instead.

| Index | Role           | Hex       | Notes                           |
|-------|----------------|-----------|---------------------------------|
| 0     | Black          | `#212120` | Sidebar bg — contextual dark    |
| 1     | Red            | `#c86878` | Rose error                      |
| 2     | Green          | `#a0c088` | Sage — git additions            |
| 3     | Yellow         | `#e07838` | Orange — git modified           |
| 4     | Blue           | `#e07838` | Orange — p10k DIR_FOREGROUND    |
| 5     | Magenta        | `#b888c8` | Mauve                           |
| 6     | Cyan           | `#a0c088` | Sage                            |
| 7     | White          | `#c3c2b7` | Inactive text                   |
| 8     | Bright black   | `#686866` | Comments / dim                  |
| 9     | Bright red     | `#d898a8` | Lighter rose                    |
| 10    | Bright green   | `#b8d0a0` | Lighter sage                    |
| 11    | Bright yellow  | `#f09848` | Brighter orange                 |
| 12    | Bright blue    | `#f09848` | Bright orange — p10k tuning     |
| 13    | Bright magenta | `#c8a0d8` | Lighter mauve                   |
| 14    | Bright cyan    | `#b8d0a0` | Lighter sage                    |
| 15    | Bright white   | `#f8f8f6` | Primary text                    |

## Visual reference

Open `reference/hearthstone-final.html` in a browser for a full rendered mockup
with syntax-highlighted code, sidebar, tabs, and terminal.
