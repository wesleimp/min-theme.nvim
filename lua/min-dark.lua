-- colors/min-dark.lua

local M = {}

local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local colors = {
  fg = "#888888",
  bg = "#1f1f1f",
  bg_alt = "#1A1A1A",
  bg_highlight = "#292929",
  bg_visual = "#212121",
  accent = "#b392f0",
  orange = "#FF9800",
  pink = "#FF7A84",
  blue = "#79b8ff",
  yellow = "#ffab70",
  green = "#9db1c5",
  red = "#cd3131",
  error = "#cd3131",
  warn = "#FF9800",
  info = "#316bcd",
  hint = "#b392f0",
  gray = "#727272",
  light_gray = "#F5F5F5",
  medium_gray = "#bbbbbb",
  comment = "#6b737c",
  link = "#1976D2",
  white = "#f8f8f8",
  keyword = "#f97583",
  border = "#444444",
  indent_guide = "#2A2A2A",
  indent_guide_active = "#383838",
  line_highlight = "#303030",
  diff_add = "#3a632a",
  diff_delete = "#cd3131",
  git_add = "#3a632a",
  git_change = "#1976D2",
  git_delete = "#cd3131",
  git_ignored = "#444444",
  ruler = "#2A2A2A",
}

function M.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "min-dark"

  -- UI
  highlight("Normal", { fg = colors.fg, bg = colors.bg })
  highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_alt })
  highlight("FloatBorder", { fg = colors.border, bg = colors.bg_alt })
  highlight("CursorLine", { bg = colors.line_highlight })
  highlight("CursorColumn", { bg = colors.line_highlight })
  highlight("Cursor", { fg = colors.bg, bg = colors.fg })
  highlight("LineNr", { fg = colors.gray })
  highlight("CursorLineNr", { fg = colors.white })
  highlight("SignColumn", { fg = colors.gray, bg = colors.bg })
  highlight("ColorColumn", { bg = colors.line_highlight })
  highlight("StatusLine", { fg = colors.gray, bg = colors.bg_alt })
  highlight("StatusLineNC", { fg = colors.gray, bg = colors.bg_alt })
  highlight("VertSplit", { fg = colors.indent_guide, bg = colors.indent_guide })
  highlight("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
  highlight("PmenuSel", { fg = colors.light_gray, bg = colors.bg_visual })
  highlight("PmenuSbar", { bg = colors.bg_alt })
  highlight("PmenuThumb", { bg = colors.gray })
  highlight("TabLine", { fg = colors.gray, bg = colors.bg_alt })
  highlight("TabLineFill", { bg = colors.bg_alt })
  highlight("TabLineSel", { fg = colors.light_gray, bg = colors.bg })
  highlight("Visual", { bg = colors.bg_highlight })
  highlight("VisualNOS", { bg = colors.bg_highlight })
  highlight("Search", { bg = "#3a3a3a", fg = colors.yellow })
  highlight("IncSearch", { bg = colors.orange, fg = colors.bg })
  highlight("MatchParen", { fg = colors.orange, bold = true })
  highlight("Directory", { fg = colors.blue })
  highlight("Folded", { fg = colors.gray, bg = colors.bg_highlight })
  highlight("FoldColumn", { fg = colors.gray, bg = colors.bg })
  highlight("DiffAdd", { bg = colors.diff_add })
  highlight("DiffChange", { bg = colors.diff_delete })
  highlight("DiffDelete", { bg = colors.diff_delete })
  highlight("DiffText", { bg = colors.diff_delete })
  highlight("NonText", { fg = colors.gray })
  highlight("EndOfBuffer", { fg = colors.gray })
  highlight("SpecialKey", { fg = colors.gray })
  highlight("Title", { fg = colors.accent, bold = true })
  highlight("Question", { fg = colors.blue })
  highlight("MoreMsg", { fg = colors.blue })
  highlight("ModeMsg", { fg = colors.fg })
  highlight("ErrorMsg", { fg = colors.error })
  highlight("WarningMsg", { fg = colors.warn })
  highlight("WildMenu", { fg = colors.light_gray, bg = colors.bg_highlight })
  highlight("Conceal", { fg = colors.comment })
  highlight("Whitespace", { fg = colors.gray })

  -- Syntax
  highlight("Comment", { fg = colors.comment, italic = true })
  highlight("String", { fg = colors.yellow })
  highlight("Character", { fg = colors.yellow })
  highlight("Number", { fg = colors.white })
  highlight("Float", { fg = colors.white })
  highlight("Boolean", { fg = colors.blue })
  highlight("Keyword", { fg = colors.keyword })
  highlight("Operator", { fg = colors.medium_gray })
  highlight("Function", { fg = colors.accent })
  highlight("Type", { fg = colors.accent })
  highlight("Constant", { fg = colors.blue })
  highlight("Identifier", { fg = colors.light_gray })
  highlight("Statement", { fg = colors.keyword })
  highlight("Conditional", { fg = colors.keyword })
  highlight("Repeat", { fg = colors.keyword })
  highlight("Label", { fg = colors.keyword })
  highlight("Exception", { fg = colors.keyword })
  highlight("PreProc", { fg = colors.accent })
  highlight("Include", { fg = colors.keyword })
  highlight("Define", { fg = colors.keyword })
  highlight("Special", { fg = colors.blue })
  highlight("SpecialChar", { fg = colors.yellow })
  highlight("Delimiter", { fg = colors.medium_gray })
  highlight("Tag", { fg = colors.blue })
  highlight("Debug", { fg = colors.error })
  highlight("Underlined", { fg = colors.link, underline = true })
  highlight("Error", { fg = colors.error })
  highlight("Todo", { fg = colors.light_gray, bg = colors.bg_highlight, bold = true })
  highlight("Macro", { fg = colors.medium_gray })
  highlight("StorageClass", { fg = colors.keyword })
  highlight("Structure", { fg = colors.accent })
  highlight("Typedef", { fg = colors.accent })
  highlight("SpecialComment", { fg = colors.comment, italic = true })

  -- Diagnostics (LSP)
  highlight("DiagnosticError", { fg = colors.error })
  highlight("DiagnosticWarn", { fg = colors.warn })
  highlight("DiagnosticInfo", { fg = colors.info })
  highlight("DiagnosticHint", { fg = colors.hint })
  highlight("DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
  highlight("DiagnosticUnderlineWarn", { sp = colors.warn, undercurl = true })
  highlight("DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
  highlight("DiagnosticUnderlineHint", { sp = colors.hint, undercurl = true })
  highlight("DiagnosticSignError", { fg = colors.error })
  highlight("DiagnosticSignWarn", { fg = colors.warn })
  highlight("DiagnosticSignInfo", { fg = colors.info })
  highlight("DiagnosticSignHint", { fg = colors.hint })
  highlight("DiagnosticFloatingError", { fg = colors.error })
  highlight("DiagnosticFloatingWarn", { fg = colors.warn })
  highlight("DiagnosticFloatingInfo", { fg = colors.info })
  highlight("DiagnosticFloatingHint", { fg = colors.hint })
  highlight("DiagnosticVirtualTextError", { fg = colors.error, italic = true })
  highlight("DiagnosticVirtualTextWarn", { fg = colors.warn, italic = true })
  highlight("DiagnosticVirtualTextInfo", { fg = colors.info, italic = true })
  highlight("DiagnosticVirtualTextHint", { fg = colors.hint, italic = true })

  -- Treesitter
  highlight("@comment", { fg = colors.comment, italic = true })
  highlight("@none", { fg = "NONE", bg = "NONE" })
  highlight("@string", { fg = colors.yellow })
  highlight("@string.regex", { fg = colors.yellow })
  highlight("@string.regexp", { fg = colors.yellow })
  highlight("@string.escape", { fg = colors.yellow })
  highlight("@string.special.symbol", { fg = colors.blue })
  highlight("@character", { fg = colors.yellow })
  highlight("@character.special", { fg = colors.yellow })
  highlight("@number", { fg = colors.white })
  highlight("@number.float", { fg = colors.white })
  highlight("@boolean", { fg = colors.blue })
  highlight("@function", { fg = colors.accent })
  highlight("@function.call", { fg = colors.accent })
  highlight("@function.builtin", { fg = colors.accent })
  highlight("@function.macro", { fg = colors.medium_gray })
  highlight("@function.method", { fg = colors.accent })
  highlight("@function.method.call", { fg = colors.accent })
  highlight("@method", { fg = colors.accent })
  highlight("@method.call", { fg = colors.accent })
  highlight("@constructor", { fg = colors.accent })
  highlight("@parameter", { fg = colors.orange })
  highlight("@parameter.reference", { fg = colors.orange })
  highlight("@keyword", { fg = colors.keyword })
  highlight("@keyword.function", { fg = colors.keyword })
  highlight("@keyword.operator", { fg = colors.keyword })
  highlight("@keyword.return", { fg = colors.keyword })
  highlight("@keyword.coroutine", { fg = colors.keyword })
  highlight("@keyword.directive", { fg = colors.keyword })
  highlight("@conditional", { fg = colors.keyword })
  highlight("@repeat", { fg = colors.keyword })
  highlight("@label", { fg = colors.blue })
  highlight("@include", { fg = colors.keyword })
  highlight("@exception", { fg = colors.keyword })
  highlight("@type", { fg = colors.accent })
  highlight("@type.builtin", { fg = colors.accent })
  highlight("@type.definition", { fg = colors.accent })
  highlight("@type.qualifier", { fg = colors.keyword })
  highlight("@storageclass", { fg = colors.keyword })
  highlight("@attribute", { fg = colors.orange })
  highlight("@field", { fg = colors.blue })
  highlight("@property", { fg = colors.white })
  highlight("@variable", { fg = colors.light_gray })
  highlight("@variable.builtin", { fg = colors.blue })
  highlight("@variable.member", { fg = colors.accent })
  highlight("@constant", { fg = colors.blue })
  highlight("@constant.builtin", { fg = colors.blue })
  highlight("@constant.macro", { fg = colors.blue })
  highlight("@namespace", { fg = colors.accent })
  highlight("@symbol", { fg = colors.blue })
  highlight("@text", { fg = colors.fg })
  highlight("@text.strong", { fg = colors.pink, bold = true })
  highlight("@text.emphasis", { italic = true })
  highlight("@text.underline", { underline = true })
  highlight("@text.strike", { strikethrough = true })
  highlight("@text.title", { fg = colors.pink, bold = true })
  highlight("@text.literal", { fg = colors.green })
  highlight("@text.uri", { fg = colors.yellow, underline = true })
  highlight("@text.math", { fg = colors.blue })
  highlight("@text.reference", { fg = colors.blue })
  highlight("@text.todo", { fg = colors.light_gray, bg = colors.bg_highlight, bold = true })
  highlight("@text.note", { fg = colors.info, bg = colors.bg_highlight })
  highlight("@text.warning", { fg = colors.warn, bg = colors.bg_highlight })
  highlight("@text.danger", { fg = colors.error, bg = colors.bg_highlight })
  highlight("@text.diff.add", { bg = colors.diff_add })
  highlight("@text.diff.delete", { bg = colors.diff_delete })
  highlight("@tag", { fg = colors.blue })
  highlight("@tag.attribute", { fg = colors.accent })
  highlight("@tag.builtin", { fg = colors.yellow })
  highlight("@tag.delimiter", { fg = colors.medium_gray })
  highlight("@macro", { fg = colors.medium_gray })
  highlight("@identifier", { fg = colors.comment })
  highlight("@punctuation.delimiter", { fg = colors.medium_gray })
  highlight("@punctuation.bracket", { fg = colors.medium_gray })
  highlight("@punctuation.special", { fg = colors.medium_gray })
  highlight("@operator", { fg = colors.medium_gray })
  highlight("@error", { fg = colors.error })
  highlight("@debug", { fg = colors.hint })

  -- Language specific
  highlight("@elixir.variable", { fg = colors.medium_gray })

  -- Markdown
  highlight("@markup", { fg = colors.fg })
  highlight("@markup.heading", { fg = colors.pink, bold = true })
  highlight("@markup.raw", { fg = colors.green })
  highlight("@markup.link", { fg = colors.yellow })
  highlight("@markup.link.url", { fg = colors.link, underline = true })
  highlight("@markup.link.label", { fg = colors.blue })
  highlight("@markup.list", { fg = colors.pink })
  highlight("@markup.strong", { fg = colors.pink, bold = true })
  highlight("@markup.italic", { italic = true })
  highlight("@markup.strikethrough", { strikethrough = true })
  highlight("@markup.quote", { fg = colors.green, italic = true })

  -- nvim-cmp
  highlight("CmpItemAbbr", { fg = colors.fg })
  highlight("CmpItemAbbrDeprecated", { fg = colors.gray, strikethrough = true })
  highlight("CmpItemAbbrMatch", { fg = colors.accent, bold = true })
  highlight("CmpItemAbbrMatchFuzzy", { fg = colors.accent, italic = true })
  highlight("CmpItemKind", { fg = colors.orange })
  highlight("CmpItemMenu", { fg = colors.comment })
  highlight("CmpItemKindText", { fg = colors.fg })
  highlight("CmpItemKindMethod", { fg = colors.accent })
  highlight("CmpItemKindFunction", { fg = colors.accent })
  highlight("CmpItemKindConstructor", { fg = colors.accent })
  highlight("CmpItemKindField", { fg = colors.blue })
  highlight("CmpItemKindVariable", { fg = colors.light_gray })
  highlight("CmpItemKindClass", { fg = colors.accent })
  highlight("CmpItemKindInterface", { fg = colors.accent })
  highlight("CmpItemKindModule", { fg = colors.accent })
  highlight("CmpItemKindProperty", { fg = colors.blue })
  highlight("CmpItemKindUnit", { fg = colors.white })
  highlight("CmpItemKindValue", { fg = colors.white })
  highlight("CmpItemKindEnum", { fg = colors.accent })
  highlight("CmpItemKindKeyword", { fg = colors.keyword })
  highlight("CmpItemKindSnippet", { fg = colors.green })
  highlight("CmpItemKindColor", { fg = colors.yellow })
  highlight("CmpItemKindFile", { fg = colors.fg })
  highlight("CmpItemKindReference", { fg = colors.blue })
  highlight("CmpItemKindFolder", { fg = colors.fg })
  highlight("CmpItemKindEnumMember", { fg = colors.blue })
  highlight("CmpItemKindConstant", { fg = colors.blue })
  highlight("CmpItemKindStruct", { fg = colors.accent })
  highlight("CmpItemKindEvent", { fg = colors.orange })
  highlight("CmpItemKindOperator", { fg = colors.medium_gray })
  highlight("CmpItemKindTypeParameter", { fg = colors.accent })

  -- LSP
  highlight("LspReferenceText", { bg = colors.bg_highlight })
  highlight("LspReferenceRead", { bg = colors.bg_highlight })
  highlight("LspReferenceWrite", { bg = colors.bg_highlight })
  highlight("LspCodeLens", { fg = colors.comment })
  highlight("LspCodeLensText", { fg = colors.comment })
  highlight("LspCodeLensSign", { fg = colors.comment })
  highlight("LspSignatureActiveParameter", { fg = colors.orange, bold = true })
  highlight("LspInlayHint", { fg = colors.comment, italic = true })

  -- Git
  highlight("GitSignsAdd", { fg = colors.git_add })
  highlight("GitSignsChange", { fg = colors.git_change })
  highlight("GitSignsDelete", { fg = colors.git_delete })
  highlight("GitSignsCurrentLineBlame", { fg = colors.comment })

  -- Indent Guides
  highlight("IndentBlanklineChar", { fg = colors.indent_guide })
  highlight("IndentBlanklineContextChar", { fg = colors.indent_guide_active })

  -- Telescope
  highlight("TelescopeBorder", { fg = colors.border })
  highlight("TelescopePromptBorder", { fg = colors.border })
  highlight("TelescopeResultsBorder", { fg = colors.border })
  highlight("TelescopePreviewBorder", { fg = colors.border })
  highlight("TelescopeSelection", { fg = colors.light_gray, bg = colors.bg_visual })
  highlight("TelescopeSelectionCaret", { fg = colors.accent })
  highlight("TelescopeMatching", { fg = colors.accent, bold = true })
  highlight("TelescopePromptPrefix", { fg = colors.blue })

  -- NvimTree
  highlight("NvimTreeNormal", { fg = colors.fg, bg = colors.bg_alt })
  highlight("NvimTreeEndOfBuffer", { fg = colors.gray })
  highlight("NvimTreeRootFolder", { fg = colors.accent, bold = true })
  highlight("NvimTreeGitDirty", { fg = colors.warn })
  highlight("NvimTreeGitNew", { fg = colors.git_add })
  highlight("NvimTreeGitDeleted", { fg = colors.git_delete })
  highlight("NvimTreeSpecialFile", { fg = colors.yellow, underline = true })
  highlight("NvimTreeIndentMarker", { fg = colors.indent_guide })
  highlight("NvimTreeImageFile", { fg = colors.fg })
  highlight("NvimTreeSymlink", { fg = colors.blue })
  highlight("NvimTreeFolderName", { fg = colors.blue })

  -- WhichKey
  highlight("WhichKey", { fg = colors.accent })
  highlight("WhichKeyGroup", { fg = colors.blue })
  highlight("WhichKeyDesc", { fg = colors.light_gray })
  highlight("WhichKeySeperator", { fg = colors.comment })
  highlight("WhichKeySeparator", { fg = colors.comment })
  highlight("WhichKeyFloat", { bg = colors.bg_alt })
  highlight("WhichKeyValue", { fg = colors.comment })

  -- Bufferline
  highlight("BufferLineFill", { bg = colors.bg_alt })
  highlight("BufferLineBackground", { fg = colors.gray, bg = colors.bg_alt })
  highlight("BufferLineBufferVisible", { fg = colors.fg, bg = colors.bg_alt })
  highlight("BufferLineBufferSelected", { fg = colors.light_gray, bg = colors.bg })
  highlight("BufferLineTab", { fg = colors.gray, bg = colors.bg_alt })
  highlight("BufferLineTabSelected", { fg = colors.light_gray, bg = colors.bg })
  highlight("BufferLineTabClose", { fg = colors.error, bg = colors.bg_alt })
  highlight("BufferLineIndicatorSelected", { fg = colors.accent, bg = colors.bg })
  highlight("BufferLineSeparator", { fg = colors.indent_guide, bg = colors.bg_alt })
  highlight("BufferLineSeparatorVisible", { fg = colors.indent_guide, bg = colors.bg_alt })
  highlight("BufferLineSeparatorSelected", { fg = colors.indent_guide, bg = colors.bg })

  -- Lualine
  highlight("LualineModeNormal", { fg = colors.bg, bg = colors.accent, bold = true })
  highlight("LualineModeInsert", { fg = colors.bg, bg = colors.blue, bold = true })
  highlight("LualineModeVisual", { fg = colors.bg, bg = colors.orange, bold = true })
  highlight("LualineModeCommand", { fg = colors.bg, bg = colors.pink, bold = true })
  highlight("LualineBranch", { fg = colors.accent, bg = colors.bg_alt, bold = true })
  highlight("LualineFileName", { fg = colors.light_gray, bg = colors.bg_alt })
  highlight("LualineProgress", { fg = colors.gray, bg = colors.bg_alt })
  highlight("LualineLocation", { fg = colors.gray, bg = colors.bg_alt })

  -- Gitsigns
  highlight("GitSignsAddLn", { fg = colors.git_add })
  highlight("GitSignsAddNr", { fg = colors.git_add })
  highlight("GitSignsChangeLn", { fg = colors.git_change })
  highlight("GitSignsChangeNr", { fg = colors.git_change })
  highlight("GitSignsDeleteLn", { fg = colors.git_delete })
  highlight("GitSignsDeleteNr", { fg = colors.git_delete })
  highlight("GitSignsCurrentLineBlame", { fg = colors.comment, italic = true })

  -- Dashboard/Alpha
  highlight("AlphaHeader", { fg = colors.accent })
  highlight("AlphaButtons", { fg = colors.fg })
  highlight("AlphaShortcut", { fg = colors.orange, bold = true })
  highlight("AlphaFooter", { fg = colors.comment, italic = true })

  -- Notify
  highlight("NotifyERROR", { fg = colors.error })
  highlight("NotifyWARN", { fg = colors.warn })
  highlight("NotifyINFO", { fg = colors.info })
  highlight("NotifyDEBUG", { fg = colors.comment })
  highlight("NotifyTRACE", { fg = colors.hint })
  highlight("NotifyERRORTitle", { fg = colors.error, bold = true })
  highlight("NotifyWARNTitle", { fg = colors.warn, bold = true })
  highlight("NotifyINFOTitle", { fg = colors.info, bold = true })
  highlight("NotifyDEBUGTitle", { fg = colors.comment, bold = true })
  highlight("NotifyTRACETitle", { fg = colors.hint, bold = true })

  -- Trouble
  highlight("TroubleNormal", { fg = colors.fg, bg = colors.bg_alt })
  highlight("TroubleText", { fg = colors.fg })
  highlight("TroubleSource", { fg = colors.comment })
  highlight("TroubleFoldIcon", { fg = colors.accent, bold = true })
  highlight("TroubleCode", { fg = colors.comment })
  highlight("TroubleFile", { fg = colors.blue })

  -- Hop
  highlight("HopNextKey", { fg = colors.accent, bold = true })
  highlight("HopNextKey1", { fg = colors.blue, bold = true })
  highlight("HopNextKey2", { fg = colors.gray })
  highlight("HopUnmatched", { fg = colors.comment })

  -- Illuminate
  highlight("IlluminatedWord", { bg = colors.bg_highlight })
  highlight("IlluminatedCurWord", { bg = colors.bg_highlight })
  highlight("IlluminatedWordText", { bg = colors.bg_highlight })
  highlight("IlluminatedWordRead", { bg = colors.bg_highlight })
  highlight("IlluminatedWordWrite", { bg = colors.bg_highlight })

  -- Navic
  highlight("NavicIconsFile", { fg = colors.fg })
  highlight("NavicIconsModule", { fg = colors.accent })
  highlight("NavicIconsNamespace", { fg = colors.accent })
  highlight("NavicIconsPackage", { fg = colors.fg })
  highlight("NavicIconsClass", { fg = colors.accent })
  highlight("NavicIconsMethod", { fg = colors.accent })
  highlight("NavicIconsProperty", { fg = colors.blue })
  highlight("NavicIconsField", { fg = colors.blue })
  highlight("NavicIconsConstructor", { fg = colors.accent })
  highlight("NavicIconsEnum", { fg = colors.accent })
  highlight("NavicIconsInterface", { fg = colors.accent })
  highlight("NavicIconsFunction", { fg = colors.accent })
  highlight("NavicIconsVariable", { fg = colors.light_gray })
  highlight("NavicIconsConstant", { fg = colors.blue })
  highlight("NavicIconsString", { fg = colors.yellow })
  highlight("NavicIconsNumber", { fg = colors.white })
  highlight("NavicIconsBoolean", { fg = colors.blue })
  highlight("NavicIconsArray", { fg = colors.accent })
  highlight("NavicIconsObject", { fg = colors.accent })
  highlight("NavicIconsKey", { fg = colors.keyword })
  highlight("NavicIconsNull", { fg = colors.blue })
  highlight("NavicIconsEnumMember", { fg = colors.blue })
  highlight("NavicIconsStruct", { fg = colors.accent })
  highlight("NavicIconsEvent", { fg = colors.orange })
  highlight("NavicIconsOperator", { fg = colors.medium_gray })
  highlight("NavicIconsTypeParameter", { fg = colors.accent })
  highlight("NavicText", { fg = colors.gray })
  highlight("NavicSeparator", { fg = colors.gray })

  -- Mini
  highlight("MiniCompletionActiveParameter", { underline = true })
  highlight("MiniCursorword", { bg = colors.bg_highlight })
  highlight("MiniCursorwordCurrent", { bg = colors.bg_highlight })
  highlight("MiniIndentscopeSymbol", { fg = colors.accent })
  highlight("MiniIndentscopePrefix", { nocombine = true })
  highlight("MiniJump", { bg = colors.pink, fg = colors.bg })
  highlight("MiniJump2dSpot", { fg = colors.pink, bold = true })
  highlight("MiniStarterCurrent", { nocombine = true })
  highlight("MiniStarterFooter", { fg = colors.comment, italic = true })
  highlight("MiniStarterHeader", { fg = colors.accent })
  highlight("MiniStarterInactive", { fg = colors.comment, italic = true })
  highlight("MiniStarterItem", { fg = colors.fg })
  highlight("MiniStarterItemBullet", { fg = colors.border })
  highlight("MiniStarterItemPrefix", { fg = colors.warn })
  highlight("MiniStarterSection", { fg = colors.blue })
  highlight("MiniStarterQuery", { fg = colors.light_gray })
  highlight("MiniStatuslineDevinfo", { fg = colors.gray, bg = colors.bg_highlight })
  highlight("MiniStatuslineFileinfo", { fg = colors.gray, bg = colors.bg_highlight })
  highlight("MiniStatuslineFilename", { fg = colors.gray, bg = colors.bg_alt })
  highlight("MiniStatuslineInactive", { fg = colors.gray, bg = colors.bg_alt })
  highlight("MiniStatuslineModeCommand", { fg = colors.bg, bg = colors.pink, bold = true })
  highlight("MiniStatuslineModeInsert", { fg = colors.bg, bg = colors.blue, bold = true })
  highlight("MiniStatuslineModeNormal", { fg = colors.bg, bg = colors.accent, bold = true })
  highlight("MiniStatuslineModeOther", { fg = colors.bg, bg = colors.green, bold = true })
  highlight("MiniStatuslineModeReplace", { fg = colors.bg, bg = colors.error, bold = true })
  highlight("MiniStatuslineModeVisual", { fg = colors.bg, bg = colors.orange, bold = true })
  highlight("MiniSurround", { bg = colors.orange, fg = colors.bg })
  highlight("MiniTablineCurrent", { fg = colors.light_gray, bg = colors.bg })
  highlight("MiniTablineFill", { bg = colors.bg_alt })
  highlight("MiniTablineHidden", { fg = colors.gray, bg = colors.bg_alt })
  highlight("MiniTablineModifiedCurrent", { fg = colors.warn, bg = colors.bg })
  highlight("MiniTablineModifiedHidden", { fg = colors.warn, bg = colors.bg_alt })
  highlight("MiniTablineModifiedVisible", { fg = colors.warn, bg = colors.bg_alt })
  highlight("MiniTablineTabpagesection", { fg = colors.bg, bg = colors.accent })
  highlight("MiniTablineVisible", { fg = colors.fg, bg = colors.bg_alt })
  highlight("MiniTestEmphasis", { bold = true })
  highlight("MiniTestFail", { fg = colors.error, bold = true })
  highlight("MiniTestPass", { fg = colors.git_add, bold = true })
  highlight("MiniTrailspace", { bg = colors.error })

  -- Fidget
  highlight("FidgetTitle", { fg = colors.accent, bold = true })
  highlight("FidgetTask", { fg = colors.fg })

  -- Fidget
  highlight("OilFile", { fg = colors.light_gray })

  -- Other plugin highlights can be added as needed
end

return M
