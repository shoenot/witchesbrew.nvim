local lush = require('lush')
local hsl = lush.hsl

local palette = require("witchesbrew.palette")

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = palette.overlay }, -- Columns set with 'colorcolumn'
    Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = palette.base, bg = palette.text }, -- Character under the cursor
    CurSearch      { fg = palette.yellow, bg = palette.surface }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { bg = palette.text, fg = palette.base }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = palette.hi_low }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { bg = palette.hi_low }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = palette.pink }, -- Directory names (and other special names in listings)
    DiffAdd        { bg = palette.diff_add }, -- Diff mode: Added line |diff.txt|
    DiffChange     { bg = palette.overlay }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { bg = palette.diff_del }, -- Diff mode: Deleted line |diff.txt|
    netrwClassify  { fg = palette.purple },
    DiffText       { bg = palette.diff_text }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    { fg = palette.hi_med }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { gui = "reverse" }, -- Cursor in a focused terminal
    TermCursorNC   { gui = "reverse" }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = palette.error }, -- Error messages on the command line
    VertSplit      { fg = palette.hi_med }, -- Column separating vertically split windows
    Folded         { bg = palette.surface, fg = palette.text }, -- Line used for closed folds
    FoldColumn     { fg = palette.muted }, -- 'foldcolumn'
    SignColumn     { bg = palette.base, fg = palette.text }, -- Column where |signs| are displayed
    IncSearch      { fg = palette.base, bg = palette.pink }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { bg = palette.hi_med }, -- |:substitute| replacement text highlighting
    LineNr         { fg = palette.muted }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { LineNr }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { LineNr }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { bg = palette.hi_low }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { FoldColumn }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { SignColumn }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg = palette.text, bg = palette.hi_med }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg = palette.subtle }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea        { }, -- Area for messages and cmdline
    MsgSeparator   { bg = palette.surface, fg = palette.subtle }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { fg = palette.purple }, -- |more-prompt|
    NonText        { fg = palette.muted }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { bg = palette.base, fg = palette.text }, -- Normal text
    NormalFloat    { fg = palette.text }, -- Normal text in floating windows.
    FloatBorder    { fg = palette.pink }, -- Border of floating windows.
    FloatTitle     { fg = palette.brightred }, -- Title of floating windows.
    NormalNC       { bg = palette.base, fg = palette.text }, -- normal text in non-current windows
    Pmenu          { bg = palette.surface, fg = palette.subtle }, -- Popup menu: Normal item.
    PmenuSel       { fg = palette.brightpink, bg = palette.overlay}, -- Popup menu: Selected item.
    PmenuKind      { Pmenu }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { PmenuSel }, -- Popup menu: Selected item "kind"
    PmenuExtra     { Pmenu }, -- Popup menu: Normal item "extra text"
    PmenuExtraSel  { PmenuSel }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg = palette.hi_low }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg = palette.hi_med }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = palette.warning }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { fg = palette.brightblue }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { bg = palette.hi_med }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg = palette.green }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { gui="undercurl", sp = palette.red }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { gui="undercurl", sp = palette.purple }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { gui="undercurl", sp = palette.subtle }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { gui="undercurl", sp = palette.subtle }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { bg = palette.surface, fg = palette.subtle }, -- Status line of current window
    StatusLineNC   { bg = palette.base, fg = palette.muted }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { bg = palette.surface, fg = palette.subtle }, -- Tab pages line, not active tab page label
    TabLineFill    { bg = palette.surface }, -- Tab pages line, where there are no labels
    TabLineSel     { fg = palette.base, bg = palette.pink }, -- Tab pages line, active tab page label
    Title          { fg = palette.text }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = palette.hi_med }, -- Visual mode selection
    VisualNOS      { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = palette.warning }, -- Warning messages
    Whitespace     { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { Normal }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { IncSearch }, -- Current match in 'wildmenu' completion
    WinBar         { gui="bold", fg = palette.subtle, bg = palette.surface }, -- Window bar of current window
    WinBarNC       { fg = palette.subtle, bg = palette.surface }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = palette.muted, gui = "italic" }, -- Any comment

    Constant       { fg = palette.amber }, -- (*) Any constant
    String         { fg = palette.goldshade1 }, --   A string constant: "this is a string"
    Character      { fg = palette.amber }, --   A character constant: 'c', '\n'
    Number         { fg = palette.amber }, --   A number constant: 234, 0xff
    Boolean        { Constant }, --   A boolean constant: TRUE, false
    Float          { Constant }, --   A floating point constant: 2.3e10

    Identifier     { fg = palette.text  }, -- (*) Any variable name
    Function       { fg = palette.pinkshade3 }, --   Function name (also: methods for classes)

    Statement      { fg = palette.pinkshade1 }, -- (*) Any statement
    Conditional    { Statement }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { Statement }, --   "sizeof", "+", "*", etc.
    Keyword        { Statement }, --   any other keyword
    Exception      { fg = palette.error }, --   try, catch, throw

    PreProc        { fg = palette.purple }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = palette.wine }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = palette.red }, -- (*) Any special symbol
    SpecialChar    { Special }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { Special }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { fg = palette.muted }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = palette.error }, -- Any erroneous construct
    Todo           { fg = palette.red }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = palette.error } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = palette.warning } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = palette.blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = palette.blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = palette.success } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo } , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticInfo } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { gui = "undercurl", sp = palette.red } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { gui = "undercurl", sp = palette.yellow } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { gui = "undercurl", sp = palette.blue } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { gui = "undercurl", sp = palette.blue } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { gui = "undercurl", sp = palette.green } , -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    { DiagnosticError } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo } , -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticInfo } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { DiagnosticOk } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo } , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticInfo } , -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           { DiagnosticOk } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym"@text.literal"      { Comment }, -- Comment
    sym"@text.reference"    { Identifier }, -- Identifier
    sym"@text.title"        { fg = palette.pink }, -- Title
    sym"@text.uri"          { fg = palette.teal , gui = "underline" }, -- Underlined
    sym"@text.underline"    { gui = "underline" }, -- Underlined
    sym"@text.todo"         { fg = palette.brightgreen }, -- Todo
    sym"@comment"           { Comment }, -- Comment
    sym"@punctuation"       { fg = palette.pink }, -- Delimiter
    sym"@constant"          { Constant }, -- Constant
    sym"@constant.builtin"  { fg = palette.blue }, -- Special
    sym"@constant.macro"    { fg = palette.blue}, -- Define
    sym"@define"            { Define }, -- Define
    sym"@macro"             { Macro }, -- Macro
    sym"@string"            { String }, -- String
    sym"@string.escape"     { Special }, -- SpecialChar
    sym"@string.special"    { Special }, -- SpecialChar
    sym"@character"         { Character }, -- Character
    sym"@character.special" { SpecialChar }, -- SpecialChar
    sym"@number"            { Number }, -- Number
    sym"@boolean"           { Boolean }, -- Boolean
    sym"@float"             { Float }, -- Float
    sym"@function"          { Function }, -- Function
    sym"@function.builtin"  { fg = palette.pinkshade2 }, -- Special
    sym"@function.macro"    { fg = palette.pinkshade2 }, -- Macro
    sym"@parameter"         { fg = palette.red }, -- Identifier
    sym"@method"            { Function }, -- Function
    sym"@field"             { Identifier }, -- Identifier
    sym"@property"          { Identifier }, -- Identifier
    sym"@constructor"       { Special }, -- Special
    sym"@conditional"       { Conditional }, -- Conditional
    sym"@repeat"            { Repeat }, -- Repeat
    sym"@label"             { Label }, -- Label
    sym"@operator"          { Operator }, -- Operator
    sym"@keyword"           { Keyword }, -- Keyword
    sym"@exception"         { Exception }, -- Exception
    sym"@variable"          { Identifier }, -- Identifier
    sym"@type"              { Type }, -- Type
    sym"@type.definition"   { Typedef }, -- Typedef
    sym"@storageclass"      { StorageClass }, -- StorageClass
    sym"@structure"         { Structure }, -- Structure
    sym"@namespace"         { Identifier }, -- Identifier
    sym"@include"           { Include }, -- Include
    sym"@preproc"           { PreProc }, -- PreProc
    sym"@debug"             { Debug }, -- Debug
    sym"@tag"               { Tag }, -- Tag

    -- LSP Semantic Token Groups (Neovim 0.9+)
    sym"@lsp.type.class"         { Type },
    sym"@lsp.type.decorator"     { Function },
    sym"@lsp.type.enum"          { Type },
    sym"@lsp.type.enumMember"    { Constant },
    sym"@lsp.type.function"      { Function },
    sym"@lsp.type.interface"     { Type },
    sym"@lsp.type.macro"         { Macro },
    sym"@lsp.type.method"        { Function },
    sym"@lsp.type.namespace"     { fg = palette.purple },
    sym"@lsp.type.parameter"     { sym"@parameter" },
    sym"@lsp.type.property"      { sym"@property" },
    sym"@lsp.type.struct"        { Type },
    sym"@lsp.type.type"          { Type },
    sym"@lsp.type.typeParameter" { Type },
    sym"@lsp.type.variable"      { Identifier },

    -- Telescope
    TelescopeNormal          { NormalFloat },
    TelescopeBorder          { FloatBorder },
    TelescopeTitle           { FloatTitle },
    TelescopePromptPrefix    { fg = palette.pink },
    TelescopeSelection       { bg = palette.hi_med, fg = palette.text },
    TelescopeSelectionCaret  { fg = palette.pink },
    TelescopeMatching        { fg = palette.brightpink, gui = "bold" },
    TelescopePromptNormal    { bg = palette.surface },
    TelescopePromptBorder    { bg = palette.surface, fg = palette.pink },
    TelescopePromptTitle     { bg = palette.pink, fg = palette.base },
    TelescopePreviewTitle    { bg = palette.purple, fg = palette.base },
    TelescopeResultsTitle    { bg = palette.overlay, fg = palette.text },

    -- nvim-cmp
    CmpItemAbbrDeprecated    { fg = palette.muted, gui = "strikethrough" },
    CmpItemAbbrMatch         { fg = palette.brightpink, gui = "bold" },
    CmpItemAbbrMatchFuzzy    { fg = palette.pink },
    CmpItemKindVariable      { fg = palette.text },
    CmpItemKindInterface     { fg = palette.pinkshade1 },
    CmpItemKindText          { fg = palette.text },
    CmpItemKindFunction      { fg = palette.pinkshade3 },
    CmpItemKindMethod        { fg = palette.pinkshade3 },
    CmpItemKindKeyword       { fg = palette.pinkshade1 },
    CmpItemKindProperty      { fg = palette.text },
    CmpItemKindUnit          { fg = palette.red },
    CmpItemKindSnippet       { fg = palette.goldshade1 },
    CmpItemMenu              { fg = palette.subtle },

    -- GitSigns
    GitSignsAdd              { fg = palette.green },
    GitSignsChange           { fg = palette.yellow },
    GitSignsDelete           { fg = palette.red },
    GitSignsAddInline        { bg = palette.diff_add },
    GitSignsChangeInline     { bg = palette.diff_text },
    GitSignsDeleteInline     { bg = palette.diff_del },

    -- Neo-tree / nvim-tree
    NeoTreeNormal            { bg = palette.base, fg = palette.text },
    NeoTreeNormalNC          { NeoTreeNormal },
    NeoTreeRootName          { fg = palette.pink, gui = "bold" },
    NeoTreeDirectoryName     { Directory },
    NeoTreeDirectoryIcon     { Directory },
    NeoTreeFileIcon          { fg = palette.text },
    NeoTreeFileName          { fg = palette.text },
    NeoTreeFileNameOpened    { fg = palette.brightpink },
    NeoTreeIndentMarker      { fg = palette.muted },
    NeoTreeGitAdded          { GitSignsAdd },
    NeoTreeGitModified       { GitSignsChange },
    NeoTreeGitDeleted        { GitSignsDelete },
    NvimTreeNormal           { NeoTreeNormal },
    NvimTreeRootFolder       { NeoTreeRootName },
    NvimTreeFolderName       { Directory },
    NvimTreeFolderIcon       { Directory },
    NvimTreeOpenedFolderName { fg = palette.brightpink },
    NvimTreeIndentMarker     { NeoTreeIndentMarker },
    NvimTreeGitNew           { GitSignsAdd },
    NvimTreeGitDirty         { GitSignsChange },
    NvimTreeGitDeleted       { GitSignsDelete },

    -- Indent Blankline
    IblIndent                { fg = palette.hi_low },
    IblScope                 { fg = palette.hi_med },
    IndentBlanklineChar      { IblIndent },
    IndentBlanklineContextChar { IblScope },

    -- Notify
    NotifyERRORBorder        { fg = palette.red },
    NotifyWARNBorder         { fg = palette.yellow },
    NotifyINFOBorder         { fg = palette.blue },
    NotifyDEBUGBorder        { fg = palette.subtle },
    NotifyTRACEBorder        { fg = palette.purple },
    NotifyERRORIcon          { fg = palette.red },
    NotifyWARNIcon           { fg = palette.yellow },
    NotifyINFOIcon           { fg = palette.blue },
    NotifyDEBUGIcon          { fg = palette.subtle },
    NotifyTRACEIcon          { fg = palette.purple },
    NotifyERRORTitle         { fg = palette.red },
    NotifyWARNTitle          { fg = palette.yellow },
    NotifyINFOTitle          { fg = palette.blue },
    NotifyDEBUGTitle         { fg = palette.subtle },
    NotifyTRACETitle         { fg = palette.purple },

    -- Which-key
    WhichKey                 { fg = palette.brightpink },
    WhichKeyGroup            { fg = palette.purple },
    WhichKeyDesc             { fg = palette.text },
    WhichKeySeparator        { fg = palette.muted },
    WhichKeyFloat            { NormalFloat },
    WhichKeyBorder           { FloatBorder },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
