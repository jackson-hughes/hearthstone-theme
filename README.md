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

> **Optical adjustment.** Tall narrow vertical strokes (such as VS Code's
> activity bar's left bar) read perceptibly lighter than wide horizontal
> strokes of the same hex at small thickness — the eye sees less colour per
> pixel-row. To make both surfaces register as the same weight, vertical
> accents use the darker burnt-orange `#c05828` (same hue, lower lightness)
> while horizontal accents keep the standard `#e07838`. Same design intent,
> per-surface tuning.

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

## Installation

### Ghostty

Copy `ghostty/hearthstone` to `~/.config/ghostty/themes/` then set in your
Ghostty config:

```
theme = hearthstone
```

### VS Code

Build the extension package from the `vscode/` directory:

```sh
cd vscode
npm run package
```

Then install the generated `.vsix`:

```sh
code --install-extension hearthstone-theme-0.1.0.vsix
```

Activate via `Cmd+K Cmd+T` (macOS) or `Ctrl+K Ctrl+T` (Windows/Linux) and
pick **Hearthstone**. Reload the window if the theme doesn't appear immediately.

### Zed

Copy or symlink `zed/hearthstone.json` into your Zed themes folder:

```sh
ln -s "$(pwd)/zed/hearthstone.json" ~/.config/zed/themes/hearthstone.json
```

Activate via `Cmd+K Cmd+T` and pick **Hearthstone**. Zed picks the file up
automatically — no restart needed.

### Neovim

Requires Neovim 0.8+ and `termguicolors` (enabled automatically by the theme).

**lazy.nvim**

```lua
{
  "jackson-hughes/hearthstone-theme",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("hearthstone")
  end,
}
```

> lazy.nvim v9+ supports `rtp = "neovim"` to target the subdirectory. For
> earlier versions, clone the repo and point `dir` at the `neovim/`
> subdirectory directly:
> ```lua
> { dir = "/path/to/hearthstone-theme/neovim", lazy = false, priority = 1000,
>   config = function() vim.cmd.colorscheme("hearthstone") end }
> ```

**vim-plug**

```vim
Plug 'jackson-hughes/hearthstone-theme', { 'rtp': 'neovim' }
```

Then in your config:

```vim
colorscheme hearthstone
```

**Lualine**

A lualine theme is included. After setting the colorscheme, configure lualine:

```lua
require("lualine").setup({ options = { theme = "hearthstone" } })
```

Mode colours: sage (normal), orange (insert), mauve (visual), rose (replace),
steel (command).

### Emacs

Requires Emacs 27.1+. Copy or symlink `emacs/hearthstone-theme.el` into your
custom-theme load path:

```sh
mkdir -p ~/.emacs.d/themes
ln -s "$(pwd)/emacs/hearthstone-theme.el" ~/.emacs.d/themes/hearthstone-theme.el
```

Then in your config:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'hearthstone t)
```

Faces are mapped for the standard `font-lock-*` set plus Magit, Org, Dired,
Vertico/Marginalia/Orderless, Company, Treemacs, Flycheck/Flymake, Eglot,
Meow, Which-key, Rainbow-delimiters, Markdown, and the term/vterm 16-colour
ANSI palette.
