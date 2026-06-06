local M = {}

-- Backgrounds (HSL 60°, 2%, varying lightness — warm charcoal)
M.bg_editor  = "#1c1c1b"  -- main editing surface
M.bg_base    = "#1f1f1e"  -- terminal panel bg
M.bg_panel   = "#212120"  -- sidebar, popups, floats
M.bg_hl      = "#252523"  -- active line, cursor
M.bg_hl2     = "#2e2e2c"  -- selection, secondary highlights
M.border     = "#2a2a28"  -- chrome borders, separators

-- Text tiers
M.fg_primary  = "#f8f8f6"  -- 16.0:1 — AAA
M.fg_inactive = "#c3c2b7"  -- 9.5:1 — AAA
M.fg_punct    = "#888884"  -- 5.0:1 — AA
M.fg_comment  = "#686866"  -- 3.1:1 — AA (large)
M.fg_chrome   = "#6a6a68"  -- chrome labels

-- Syntax accents
M.orange       = "#e07838"  -- 5.6:1 — functions, types, properties
M.orange_dim   = "#c05828"  -- palette constant; not used in groups
M.orange_bright = "#f09848"  -- hover / active states
M.mauve        = "#b888c8"  -- 6.0:1 — keywords, control flow
M.mauve_bright  = "#c8a0d8"
M.sage         = "#a0c088"  -- 8.3:1 — strings, numbers, literals
M.sage_bright   = "#b8d0a0"  -- escape sequences, active links
M.steel        = "#7a8a9a"  -- 4.8:1 — variables, parameters
M.rose         = "#c86878"  -- 4.6:1 — errors
M.rose_bright   = "#d898a8"

-- Misc
M.cursor = "#e07838"

-- Approximate diff backgrounds (alpha-blended onto bg_editor)
M.diff_add_bg    = "#1a2818"
M.diff_delete_bg = "#261519"
M.diff_change_bg = "#261e12"
M.diff_text_bg   = "#3a2c18"

return M
