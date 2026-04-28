local M = {}

function M.get(p)
  return {

    -- ── Core editor surface ───────────────────────────────────────────────
    Normal          = { fg = p.fg_primary,  bg = p.bg_editor },
    NormalFloat     = { fg = p.fg_primary,  bg = p.bg_panel },
    NormalNC        = { fg = p.fg_inactive, bg = p.bg_editor },
    FloatBorder     = { fg = p.border,      bg = p.bg_panel },
    FloatTitle      = { fg = p.orange,      bg = p.bg_panel, bold = true },

    -- ── Cursor & current line ─────────────────────────────────────────────
    Cursor          = { fg = p.bg_editor,   bg = p.cursor },
    CursorLine      = { bg = p.bg_hl },
    CursorLineNr    = { fg = p.fg_inactive, bg = p.bg_hl },
    CursorColumn    = { bg = p.bg_hl },
    ColorColumn     = { bg = p.bg_hl },

    -- ── Line numbers & gutter ─────────────────────────────────────────────
    LineNr          = { fg = p.fg_chrome,   bg = p.bg_editor },
    LineNrAbove     = { link = "LineNr" },
    LineNrBelow     = { link = "LineNr" },
    SignColumn      = { fg = p.fg_chrome,   bg = p.bg_editor },
    FoldColumn      = { fg = p.fg_chrome,   bg = p.bg_editor },
    Folded          = { fg = p.fg_inactive, bg = p.bg_panel, italic = true },

    -- ── Window separators ─────────────────────────────────────────────────
    VertSplit       = { fg = p.border },
    WinSeparator    = { fg = p.border },

    -- ── Selection ─────────────────────────────────────────────────────────
    Visual          = { bg = p.bg_hl2 },
    VisualNOS       = { bg = p.bg_hl2 },

    -- ── Search ────────────────────────────────────────────────────────────
    Search          = { fg = p.bg_editor,    bg = p.orange },
    IncSearch       = { fg = p.bg_editor,    bg = p.orange_bright },
    Substitute      = { link = "Search" },
    MatchParen      = { fg = p.orange,       bg = p.bg_hl, bold = true },

    -- ── Status & tab lines ────────────────────────────────────────────────
    StatusLine      = { fg = p.fg_inactive,  bg = p.bg_panel },
    StatusLineNC    = { fg = p.fg_chrome,    bg = p.bg_base },
    WinBar          = { link = "StatusLine" },
    WinBarNC        = { link = "StatusLineNC" },
    TabLine         = { fg = p.fg_chrome,    bg = p.bg_panel },
    TabLineSel      = { fg = p.fg_primary,   bg = p.bg_editor },
    TabLineFill     = { bg = p.bg_panel },

    -- ── Popup / completion menu ───────────────────────────────────────────
    Pmenu           = { fg = p.fg_primary,   bg = p.bg_panel },
    PmenuSel        = { fg = p.fg_primary,   bg = p.bg_hl },
    PmenuSbar       = { bg = p.bg_panel },
    PmenuThumb      = { bg = p.fg_chrome },
    PmenuMatch      = { fg = p.orange,       bold = true },
    PmenuMatchSel   = { fg = p.orange_bright, bold = true },
    PmenuKind       = { link = "Pmenu" },
    PmenuKindSel    = { link = "PmenuSel" },
    PmenuExtra      = { link = "Pmenu" },
    PmenuExtraSel   = { link = "PmenuSel" },
    WildMenu        = { fg = p.fg_primary,   bg = p.bg_hl },

    -- ── Non-text markers ──────────────────────────────────────────────────
    EndOfBuffer     = { fg = p.bg_editor },
    NonText         = { fg = p.fg_chrome },
    SpecialKey      = { fg = p.fg_chrome },
    Whitespace      = { fg = p.bg_hl2 },
    Conceal         = { fg = p.fg_comment },

    -- ── Indent guides (ibl.nvim and legacy indent-blankline) ──────────────
    IblIndent                   = { fg = p.border },
    IblWhitespace               = { fg = p.border },
    IblScope                    = { fg = p.orange },
    IndentBlanklineChar         = { link = "IblIndent" },
    IndentBlanklineContextChar  = { link = "IblScope" },
    IndentBlanklineSpaceChar    = { link = "IblWhitespace" },

    -- ── Messages ──────────────────────────────────────────────────────────
    ModeMsg         = { fg = p.fg_inactive },
    MoreMsg         = { fg = p.sage },
    Question        = { fg = p.orange,  bold = true },
    ErrorMsg        = { fg = p.rose,    bold = true },
    WarningMsg      = { fg = p.orange },
    Title           = { fg = p.orange,  bold = true },
    Directory       = { fg = p.orange,  bold = true },

    -- ── Spelling ──────────────────────────────────────────────────────────
    SpellBad        = { undercurl = true, sp = p.rose },
    SpellCap        = { undercurl = true, sp = p.orange },
    SpellRare       = { undercurl = true, sp = p.mauve },
    SpellLocal      = { undercurl = true, sp = p.sage },

    -- ── Quickfix / location list ──────────────────────────────────────────
    QuickFixLine    = { bg = p.bg_hl },

    -- ── Legacy syntax groups ──────────────────────────────────────────────
    Comment         = { fg = p.fg_comment, italic = true },
    SpecialComment  = { fg = p.fg_comment, italic = true },

    Constant        = { fg = p.sage },
    String          = { fg = p.sage },
    Character       = { fg = p.sage },
    Number          = { fg = p.sage },
    Float           = { fg = p.sage },
    Boolean         = { fg = p.orange },

    Identifier      = { fg = p.fg_primary },
    Function        = { fg = p.orange },

    Statement       = { fg = p.mauve },
    Conditional     = { fg = p.mauve },
    Repeat          = { fg = p.mauve },
    Label           = { fg = p.mauve },
    Operator        = { fg = p.fg_punct },
    Keyword         = { fg = p.mauve },
    Exception       = { fg = p.mauve },

    PreProc         = { fg = p.mauve },
    Include         = { fg = p.mauve },
    Define          = { fg = p.mauve },
    Macro           = { fg = p.mauve },
    PreCondit       = { fg = p.mauve },

    Type            = { fg = p.orange },
    StorageClass    = { fg = p.mauve },
    Structure       = { fg = p.orange },
    Typedef         = { fg = p.orange },

    Special         = { fg = p.sage_bright },
    SpecialChar     = { fg = p.sage_bright },
    Tag             = { fg = p.mauve },
    Delimiter       = { fg = p.fg_punct },
    Debug           = { fg = p.rose },

    Underlined      = { fg = p.steel, underline = true },
    Ignore          = { fg = p.bg_editor },
    Error           = { fg = p.rose, bold = true },
    Todo            = { fg = p.orange, bold = true },

    -- ── Diagnostics ───────────────────────────────────────────────────────
    DiagnosticError             = { fg = p.rose },
    DiagnosticWarn              = { fg = p.orange },
    DiagnosticInfo              = { fg = p.sage },
    DiagnosticHint              = { fg = p.steel },
    DiagnosticOk                = { fg = p.sage },

    DiagnosticUnderlineError    = { undercurl = true, sp = p.rose },
    DiagnosticUnderlineWarn     = { undercurl = true, sp = p.orange },
    DiagnosticUnderlineInfo     = { undercurl = true, sp = p.sage },
    DiagnosticUnderlineHint     = { undercurl = true, sp = p.steel },

    DiagnosticVirtualTextError  = { fg = p.rose,   italic = true },
    DiagnosticVirtualTextWarn   = { fg = p.orange, italic = true },
    DiagnosticVirtualTextInfo   = { fg = p.sage,   italic = true },
    DiagnosticVirtualTextHint   = { fg = p.steel,  italic = true },

    DiagnosticSignError         = { fg = p.rose,   bg = p.bg_editor },
    DiagnosticSignWarn          = { fg = p.orange, bg = p.bg_editor },
    DiagnosticSignInfo          = { fg = p.sage,   bg = p.bg_editor },
    DiagnosticSignHint          = { fg = p.steel,  bg = p.bg_editor },

    DiagnosticFloatingError     = { link = "DiagnosticError" },
    DiagnosticFloatingWarn      = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo      = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint      = { link = "DiagnosticHint" },
    DiagnosticDeprecated        = { strikethrough = true, sp = p.orange },
    DiagnosticUnnecessary       = { fg = p.fg_comment, italic = true },

    -- ── LSP references (symbol under cursor) ──────────────────────────────
    LspReferenceText            = { bg = p.bg_hl2 },
    LspReferenceRead            = { bg = p.bg_hl2 },
    LspReferenceWrite           = { bg = p.bg_hl2 },

    -- ── Diff ──────────────────────────────────────────────────────────────
    DiffAdd         = { fg = p.sage,   bg = p.diff_add_bg },
    DiffDelete      = { fg = p.rose,   bg = p.diff_delete_bg },
    DiffChange      = { fg = p.orange, bg = p.diff_change_bg },
    DiffText        = { fg = p.orange, bg = p.diff_text_bg },

    -- ── Treesitter captures ───────────────────────────────────────────────
    ["@comment"]                 = { fg = p.fg_comment, italic = true },
    ["@comment.documentation"]   = { fg = p.fg_comment, italic = true },

    ["@keyword"]                 = { fg = p.mauve },
    ["@keyword.function"]        = { fg = p.mauve },
    ["@keyword.import"]          = { fg = p.mauve },
    ["@keyword.return"]          = { fg = p.mauve },
    ["@keyword.operator"]        = { fg = p.mauve },
    ["@keyword.exception"]       = { fg = p.mauve },
    ["@keyword.conditional"]     = { fg = p.mauve },
    ["@keyword.repeat"]          = { fg = p.mauve },
    ["@keyword.coroutine"]       = { fg = p.mauve },
    ["@keyword.storage"]         = { fg = p.mauve },

    ["@function"]                = { fg = p.orange },
    ["@function.call"]           = { fg = p.orange },
    ["@function.builtin"]        = { fg = p.orange },
    ["@function.macro"]          = { fg = p.mauve },
    ["@function.method"]         = { fg = p.orange },
    ["@function.method.call"]    = { fg = p.orange },
    ["@constructor"]             = { fg = p.orange },

    ["@type"]                    = { fg = p.orange },
    ["@type.builtin"]            = { fg = p.orange },
    ["@type.definition"]         = { fg = p.orange },
    ["@namespace"]               = { fg = p.orange },
    ["@module"]                  = { fg = p.orange },

    ["@variable"]                = { fg = p.steel },
    ["@variable.builtin"]        = { fg = p.mauve, italic = true },
    ["@variable.parameter"]      = { fg = p.steel },
    ["@variable.member"]         = { fg = p.orange },
    ["@property"]                = { fg = p.orange },
    ["@field"]                   = { link = "@variable.member" },

    ["@string"]                  = { fg = p.sage },
    ["@string.regex"]            = { fg = p.sage },
    ["@string.escape"]           = { fg = p.sage_bright },
    ["@string.special"]          = { fg = p.sage_bright },
    ["@string.documentation"]    = { fg = p.fg_comment, italic = true },

    ["@character"]               = { fg = p.sage },
    ["@character.special"]       = { fg = p.sage_bright },

    ["@number"]                  = { fg = p.sage },
    ["@number.float"]            = { fg = p.sage },
    ["@boolean"]                 = { fg = p.orange },

    ["@constant"]                = { fg = p.sage },
    ["@constant.builtin"]        = { fg = p.orange },
    ["@constant.macro"]          = { fg = p.mauve },

    ["@operator"]                = { fg = p.fg_punct },
    ["@punctuation.bracket"]     = { fg = p.fg_punct },
    ["@punctuation.delimiter"]   = { fg = p.fg_punct },
    ["@punctuation.special"]     = { fg = p.sage_bright },

    ["@tag"]                     = { fg = p.mauve },
    ["@tag.attribute"]           = { fg = p.orange },
    ["@tag.delimiter"]           = { fg = p.fg_punct },

    ["@attribute"]               = { fg = p.mauve, italic = true },
    ["@label"]                   = { fg = p.mauve },

    ["@diff.plus"]               = { fg = p.sage },
    ["@diff.minus"]              = { fg = p.rose },
    ["@diff.delta"]              = { fg = p.orange },

    ["@markup.heading"]          = { fg = p.orange, bold = true },
    ["@markup.heading.1"]        = { fg = p.orange, bold = true },
    ["@markup.heading.2"]        = { fg = p.orange, bold = true },
    ["@markup.heading.3"]        = { fg = p.orange, bold = true },
    ["@markup.heading.4"]        = { fg = p.orange, bold = true },
    ["@markup.heading.5"]        = { fg = p.mauve,  bold = true },
    ["@markup.heading.6"]        = { fg = p.steel,  bold = true },
    ["@markup.bold"]             = { fg = p.fg_primary, bold = true },
    ["@markup.italic"]           = { fg = p.fg_primary, italic = true },
    ["@markup.strikethrough"]    = { fg = p.fg_comment, strikethrough = true },
    ["@markup.underline"]        = { underline = true },
    ["@markup.link"]             = { fg = p.sage,    underline = true },
    ["@markup.link.url"]         = { fg = p.fg_chrome, underline = true },
    ["@markup.link.label"]       = { fg = p.sage },
    ["@markup.raw"]              = { fg = p.sage },
    ["@markup.raw.block"]        = { fg = p.sage,    bg = p.bg_panel },
    ["@markup.list"]             = { fg = p.orange },
    ["@markup.list.checked"]     = { fg = p.sage },
    ["@markup.list.unchecked"]   = { fg = p.fg_comment },
    ["@markup.quote"]            = { fg = p.fg_comment, italic = true },

    -- ── LSP semantic tokens ───────────────────────────────────────────────
    ["@lsp.type.namespace"]      = { fg = p.orange },
    ["@lsp.type.type"]           = { fg = p.orange },
    ["@lsp.type.class"]          = { fg = p.orange },
    ["@lsp.type.enum"]           = { fg = p.orange },
    ["@lsp.type.interface"]      = { fg = p.orange },
    ["@lsp.type.struct"]         = { fg = p.orange },
    ["@lsp.type.typeParameter"]  = { fg = p.orange },
    ["@lsp.type.function"]       = { fg = p.orange },
    ["@lsp.type.method"]         = { fg = p.orange },
    ["@lsp.type.property"]       = { fg = p.orange },
    ["@lsp.type.enumMember"]     = { fg = p.orange },
    ["@lsp.type.variable"]       = { fg = p.steel },
    ["@lsp.type.parameter"]      = { fg = p.steel },
    ["@lsp.type.keyword"]        = { fg = p.mauve },
    ["@lsp.type.macro"]          = { fg = p.mauve },
    ["@lsp.type.decorator"]      = { fg = p.mauve, italic = true },
    ["@lsp.type.selfKeyword"]    = { fg = p.mauve, italic = true },
    ["@lsp.type.string"]         = { fg = p.sage },
    ["@lsp.type.number"]         = { fg = p.sage },
    ["@lsp.type.comment"]        = { fg = p.fg_comment, italic = true },
    ["@lsp.type.operator"]       = { fg = p.fg_punct },
    ["@lsp.type.label"]          = { fg = p.mauve },

    ["@lsp.mod.deprecated"]      = { link = "DiagnosticDeprecated" },
    ["@lsp.mod.documentation"]   = { link = "@comment.documentation" },
    ["@lsp.mod.readonly"]        = { link = "Constant" },
    ["@lsp.mod.static"]          = { link = "Type" },
    ["@lsp.mod.defaultLibrary"]  = { link = "Special" },
    ["@lsp.mod.async"]           = { fg = p.mauve, italic = true },
    ["@lsp.mod.abstract"]        = { italic = true },

    -- ── Gitsigns ──────────────────────────────────────────────────────────
    GitSignsAdd             = { fg = p.sage,         bg = p.bg_editor },
    GitSignsChange          = { fg = p.orange,        bg = p.bg_editor },
    GitSignsDelete          = { fg = p.rose,          bg = p.bg_editor },
    GitSignsUntracked       = { fg = p.sage_bright,   bg = p.bg_editor },
    GitSignsAddNr           = { fg = p.sage },
    GitSignsChangeNr        = { fg = p.orange },
    GitSignsDeleteNr        = { fg = p.rose },
    GitSignsAddLn           = { bg = p.diff_add_bg },
    GitSignsChangeLn        = { bg = p.diff_change_bg },

    -- ── Telescope ─────────────────────────────────────────────────────────
    TelescopeNormal          = { fg = p.fg_primary,   bg = p.bg_panel },
    TelescopeBorder          = { fg = p.border,       bg = p.bg_panel },
    TelescopePromptNormal    = { fg = p.fg_primary,   bg = p.bg_hl },
    TelescopePromptBorder    = { fg = p.border,       bg = p.bg_hl },
    TelescopePromptTitle     = { fg = p.bg_editor,    bg = p.orange },
    TelescopePromptPrefix    = { fg = p.orange },
    TelescopePreviewNormal   = { link = "TelescopeNormal" },
    TelescopePreviewBorder   = { link = "TelescopeBorder" },
    TelescopePreviewTitle    = { fg = p.bg_editor,    bg = p.sage },
    TelescopeResultsNormal   = { link = "TelescopeNormal" },
    TelescopeResultsBorder   = { link = "TelescopeBorder" },
    TelescopeResultsTitle    = { fg = p.fg_chrome,    bg = p.bg_panel },
    TelescopeSelection       = { fg = p.fg_primary,   bg = p.bg_hl },
    TelescopeSelectionCaret  = { fg = p.orange,       bg = p.bg_hl },
    TelescopeMatching        = { fg = p.orange,       bold = true },
    TelescopeMultiSelection  = { fg = p.mauve,        bg = p.bg_hl2 },

    -- ── which-key ─────────────────────────────────────────────────────────
    WhichKey          = { fg = p.orange },
    WhichKeyGroup     = { fg = p.mauve },
    WhichKeyDesc      = { fg = p.fg_primary },
    WhichKeySeparator = { fg = p.fg_chrome },
    WhichKeyValue     = { fg = p.fg_comment },
    WhichKeyFloat     = { bg = p.bg_panel },
    WhichKeyBorder    = { fg = p.border,  bg = p.bg_panel },

    -- ── nvim-cmp ──────────────────────────────────────────────────────────
    CmpItemAbbr              = { fg = p.fg_primary },
    CmpItemAbbrDeprecated    = { fg = p.fg_comment, strikethrough = true },
    CmpItemAbbrMatch         = { fg = p.orange,     bold = true },
    CmpItemAbbrMatchFuzzy    = { fg = p.orange,     bold = true },
    CmpItemMenu              = { fg = p.fg_comment, italic = true },
    CmpItemKind              = { fg = p.fg_inactive },
    CmpItemKindFunction      = { fg = p.orange },
    CmpItemKindMethod        = { fg = p.orange },
    CmpItemKindConstructor   = { fg = p.orange },
    CmpItemKindClass         = { fg = p.orange },
    CmpItemKindStruct        = { fg = p.orange },
    CmpItemKindInterface     = { fg = p.orange },
    CmpItemKindModule        = { fg = p.orange },
    CmpItemKindType          = { fg = p.orange },
    CmpItemKindEnum          = { fg = p.orange },
    CmpItemKindEnumMember    = { fg = p.orange },
    CmpItemKindField         = { fg = p.orange },
    CmpItemKindProperty      = { fg = p.orange },
    CmpItemKindKeyword       = { fg = p.mauve },
    CmpItemKindOperator      = { fg = p.fg_punct },
    CmpItemKindSnippet       = { fg = p.mauve },
    CmpItemKindVariable      = { fg = p.steel },
    CmpItemKindConstant      = { fg = p.sage },
    CmpItemKindValue         = { fg = p.sage },
    CmpItemKindText          = { fg = p.fg_inactive },
    CmpItemKindColor         = { fg = p.rose },
    CmpItemKindFile          = { fg = p.fg_inactive },
    CmpItemKindFolder        = { fg = p.orange },
    CmpItemKindReference     = { fg = p.steel },
    CmpItemKindEvent         = { fg = p.mauve },
    CmpItemKindUnit          = { fg = p.sage },
    CmpItemKindTypeParameter = { fg = p.orange },

  }
end

return M
