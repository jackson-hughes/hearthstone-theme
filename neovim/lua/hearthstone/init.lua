local M = {}

-- Reserved for future user options (theme is dark-only; no-op for now).
function M.setup(_) end

function M.load()
  vim.o.background = "dark"

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "hearthstone"

  local p = require("hearthstone.palette")

  for name, spec in pairs(require("hearthstone.groups").get(p)) do
    vim.api.nvim_set_hl(0, name, spec)
  end

  -- ── Terminal palette (matches Ghostty/VS Code suite) ───────────────────
  -- Slots 4 and 12 (blue / bright-blue) are remapped to orange for
  -- Powerlevel10k DIR_FOREGROUND compatibility.
  vim.g.terminal_color_0  = p.bg_panel       -- black
  vim.g.terminal_color_1  = p.rose           -- red
  vim.g.terminal_color_2  = p.sage           -- green
  vim.g.terminal_color_3  = p.orange         -- yellow
  vim.g.terminal_color_4  = p.orange         -- blue → orange
  vim.g.terminal_color_5  = p.mauve          -- magenta
  vim.g.terminal_color_6  = p.sage           -- cyan
  vim.g.terminal_color_7  = p.fg_inactive    -- white
  vim.g.terminal_color_8  = p.fg_comment     -- bright black
  vim.g.terminal_color_9  = p.rose_bright    -- bright red
  vim.g.terminal_color_10 = p.sage_bright    -- bright green
  vim.g.terminal_color_11 = p.orange_bright  -- bright yellow
  vim.g.terminal_color_12 = p.orange_bright  -- bright blue → bright orange
  vim.g.terminal_color_13 = p.mauve_bright   -- bright magenta
  vim.g.terminal_color_14 = p.sage_bright    -- bright cyan
  vim.g.terminal_color_15 = p.fg_primary     -- bright white
end

return M
