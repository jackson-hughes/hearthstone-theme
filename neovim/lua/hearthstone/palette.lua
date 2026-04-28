local M = {}

-- Backgrounds (HSL 60°, 2%, varying lightness — warm charcoal)
M.bg_editor  = "#1c1c1b"  -- cterm: 234  main editing surface
M.bg_base    = "#1f1f1e"  -- cterm: 234  terminal panel bg
M.bg_panel   = "#212120"  -- cterm: 235  sidebar, popups, floats
M.bg_hl      = "#252523"  -- cterm: 235  active line, cursor
M.bg_hl2     = "#2e2e2c"  -- cterm: 236  selection, secondary highlights
M.border     = "#2a2a28"  -- cterm: 236  chrome borders, separators

-- Text tiers
M.fg_primary  = "#f8f8f6"  -- cterm: 255  16.0:1 — AAA
M.fg_inactive = "#c3c2b7"  -- cterm: 251   9.5:1 — AAA
M.fg_punct    = "#888884"  -- cterm: 102   5.0:1 — AA
M.fg_comment  = "#686866"  -- cterm: 242   3.1:1 — AA (large)
M.fg_chrome   = "#6a6a68"  -- cterm: 242  chrome labels

-- Syntax accents
M.orange       = "#e07838"  -- cterm: 173  5.6:1 — functions, types, properties
M.orange_dim   = "#c05828"  -- cterm: 130  palette constant; not used in groups
M.orange_bright = "#f09848"  -- cterm: 215  hover / active states
M.mauve        = "#b888c8"  -- cterm: 139  6.0:1 — keywords, control flow
M.mauve_bright  = "#c8a0d8"  -- cterm: 182
M.sage         = "#a0c088"  -- cterm: 108  8.3:1 — strings, numbers, literals
M.sage_bright   = "#b8d0a0"  -- cterm: 151  escape sequences, active links
M.steel        = "#7a8a9a"  -- cterm: 102  4.8:1 — variables, parameters
M.rose         = "#c86878"  -- cterm: 168  4.6:1 — errors
M.rose_bright   = "#d898a8"  -- cterm: 182

-- Misc
M.cursor = "#e07838"  -- cterm: 173

-- Approximate diff backgrounds (alpha-blended onto bg_editor)
M.diff_add_bg    = "#1a2818"
M.diff_delete_bg = "#261519"
M.diff_change_bg = "#261e12"
M.diff_text_bg   = "#3a2c18"

return M
