-- Mode colours derived from the Emacs meow state indicator palette.
local p = require("hearthstone.palette")

local normal_a  = { fg = p.bg_editor,  bg = p.sage,         gui = "bold" }
local insert_a  = { fg = p.bg_editor,  bg = p.orange,       gui = "bold" }
local visual_a  = { fg = p.bg_editor,  bg = p.mauve,        gui = "bold" }
local replace_a = { fg = p.bg_editor,  bg = p.rose,         gui = "bold" }
local command_a = { fg = p.bg_editor,  bg = p.steel,        gui = "bold" }

local section_b = { fg = p.fg_inactive, bg = p.bg_panel }
local section_c = { fg = p.fg_chrome,   bg = p.bg_editor }

return {
  normal = {
    a = normal_a,
    b = section_b,
    c = section_c,
  },
  insert = {
    a = insert_a,
    b = section_b,
    c = section_c,
  },
  visual = {
    a = visual_a,
    b = section_b,
    c = section_c,
  },
  replace = {
    a = replace_a,
    b = section_b,
    c = section_c,
  },
  command = {
    a = command_a,
    b = section_b,
    c = section_c,
  },
  inactive = {
    a = { fg = p.fg_chrome, bg = p.bg_base },
    b = { fg = p.fg_chrome, bg = p.bg_base },
    c = { fg = p.fg_chrome, bg = p.bg_base },
  },
}
