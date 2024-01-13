--crustacean theme by david king
--modified navy-and-ivory theme by hal
local lush=require('lush')
local hsl=lush.hsl

local colors={
    black=hsl('#000000'),
    white=hsl('#ffffff'),
    fg=hsl(30,50,99),
    bg=hsl(194,76,7),
    darkgray=hsl('#808080'),
    normals={
        gray=hsl('#032c36'),
        red=hsl('#d13434'),
        green=hsl('#6ab791'),
        yellow=hsl('#7f705b'),
        blue=hsl('#1697b1'),
        magenta=hsl('#ff5879'),
        cyan=hsl('#2fb0ab'),
        white=hsl('#f3f2e7'),
    },
    brights={
        gray=hsl('#055567'),
        red=hsl('#ef5847'),
        green=hsl('#8ed9a2'),
        yellow=hsl('#bcae8f'),
        blue=hsl('#45bad2'),
        magenta=hsl('#ff99a1'),
        cyan=hsl('#79e4e3'),
        white=hsl('#fffff4'),
    },
}

local theme=lush(function()
    return{
        ColorColumn{bg=colors.brights.red,fg=colors.black} , -- Columns set with 'colorcolumn'
        Conceal        {bg=colors.brights.gray,fg=colors.brights.white }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor         {fg=colors.bg,bg=colors.fg}, -- Character under the cursor
        CurSearch      {bg=colors.brights.cyan,fg=colors.bg}, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        lCursor        {fg=colors.fg }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM       {Cursor}, -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn   {bg=colors.brights.gray}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine     {bg=colors.brights.gray}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory      {fg=colors.normals.green}, -- Directory names (and other special names in listings)
        DiffAdd        {bg=colors.normals.blue,fg=colors.brights.white}, -- Diff mode: Added line |diff.txt|
        DiffChange     {bg=colors.normals.magenta,fg=colors.brights.white}, -- Diff mode: Changed line |diff.txt|
        DiffDelete     {bg=colors.normals.cyan,fg=colors.brights.white}, -- Diff mode: Deleted line |diff.txt|
        DiffText       {bg=colors.red,fg=colors.brights.white}, -- Diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer    {fg=colors.brights.gray}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        TermCursor     {bg=colors.brights.cyan,fg=colors.bg}, -- Cursor in a focused terminal
        TermCursorNC   {fg=colors.brights.cyan}, -- Cursor in an unfocused terminal
        ErrorMsg       {bg=colors.normals.red,fg=colors.brights.white}, -- Error messages on the command line
        VertSplit      {fg=colors.normals.white}, -- Column separating vertically split windows
        Folded         {bg=colors.darkgray,fg=colors.brights.cyan}, -- Line used for closed folds
        FoldColumn     {bg=colors.darkgray,fg=colors.brights.cyan}, -- 'foldcolumn'
        SignColumn     {bg=colors.darkgray,fg=colors.brights.cyan}, -- Column where |signs| are displayed
        IncSearch      {bg=colors.darkgray,fg=colors.bg}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute     {bg=colors.brights.cyan,fg=colors.bg}, -- |:substitute| replacement text highlighting
        LineNr         {fg=colors.brights.yellow}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
        -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
        CursorLineNr   {fg=colors.brights.red}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        CursorLineFold {Folded}, -- Like FoldColumn when 'cursorline' is set for the cursor line
        CursorLineSign {Folded}, -- Like SignColumn when 'cursorline' is set for the cursor line
        MatchParen     {Conceal}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea        { }, -- Area for messages and cmdline
        -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg        {fg=colors.normals.green}, -- |more-prompt|
        NonText        {fg=colors.brights.cyan}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal         {fg=colors.normals.white}, -- Normal text
        NormalFloat    {bg=colors.normals.magenta,fg=colors.fg}, -- Normal text in floating windows.
        FloatBorder    {fg=colors.normals.white}, -- Border of floating windows.
        FloatTitle     {fg=colors.normals.magenta}, -- Title of floating windows.
        NormalNC       {fg=colors.normals.white}, -- normal text in non-current windows
        Pmenu          {bg=colors.normals.magenta,fg=colors.fg}, -- Popup menu: Normal item.
        PmenuSel       {bg=colors.darkgray,fg=colors.fg}, -- Popup menu: Selected item.
        -- PmenuKind      { }, -- Popup menu: Normal item "kind"
        -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
        -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
        -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
        PmenuSbar      {bg=colors.darkgray,fg=colors.normals.white}, -- Popup menu: Scrollbar.
        PmenuThumb     {fg=colors.darkgray,bg=colors.brights.cyan}, -- Popup menu: Thumb of the scrollbar.
        Question       {fg=colors.normals.green}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine   {Substitute}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search         {Substitute}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SpecialKey     {NonText}, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad       {fg=colors.darkgray}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap       {SpellBad}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal     {SpellBad}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare      {SpellBad}, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        StatusLine     {bg=colors.darkgray,fg=colors.bg}, -- Status line of current window
        StatusLineNC   {bg=colors.darkgray,fg=colors.bg}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine        {PmenuSel}, -- Tab pages line, not active tab page label
        --TabLineFill    {StatusLineNC}, -- Tab pages line, where there are no labels
        --TabLineSel     {Comment,gui=bold}, -- Tab pages line, active tab page label
        Title          {fg=colors.normals.magenta}, -- Titles for output from ":set all", ":autocmd" etc.
        Visual         {bg=colors.brights.cyan,fg=colors.bg}, -- Visual mode selection
        -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg     {fg=colors.normals.red}, -- Warning messages
        -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        WildMenu       {Substitute}, -- Current match in 'wildmenu' completion
        -- WinBar         { }, -- Window bar of current window
        -- WinBarNC       { }, -- Window bar of not-current windows

        --common vim syntax groups

        Comment        {fg=colors.darkgray}, -- Any comment

        Constant       {fg=colors.normals.red}, -- (*) Any constant
        -- String         { }, --   A string constant: "this is a string"
        -- Character      { }, --   A character constant: 'c', '\n'
        -- Number         { }, --   A number constant: 234, 0xff
        -- Boolean        { }, --   A boolean constant: TRUE, false
        -- Float          { }, --   A floating point constant: 2.3e10

        Identifier     {fg=colors.normals.blue}, -- (*) Any variable name
        -- Function       { }, --   Function name (also: methods for classes)

        Statement      {fg=colors.brights.green}, -- (*) Any statement
        -- Conditional    { }, --   if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --   case, default, etc.
        -- Operator       { }, --   "sizeof", "+", "*", etc.
        -- Keyword        { }, --   any other keyword
        -- Exception      { }, --   try, catch, throw

        PreProc        {fg=colors.brights.cyan}, -- (*) Generic Preprocessor
        -- Include        { }, --   Preprocessor #include
        -- Define         { }, --   Preprocessor #define
        -- Macro          { }, --   Same as Define
        -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

        Type           {fg=colors.normals.magenta}, -- (*) int, long, char, etc.
        -- StorageClass   { }, --   static, register, volatile, etc.
        -- Structure      { }, --   struct, union, enum, etc.
        -- Typedef        { }, --   A typedef

        Special        {fg=colors.brights.yellow}, -- (*) Any special symbol
        -- SpecialChar    { }, --   Special character in a constant
        -- Tag            { }, --   You can use CTRL-] on this
        -- Delimiter      { }, --   Character that needs attention
        -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
        -- Debug          { }, --   Debugging statements

        Underlined     { gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        Error          {fg=colors.fg,bg=colors.normals.red }, -- Any erroneous construct
        Todo           {fg=colors.bg,bg=colors.brights.green }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
        DiagnosticError            {fg=colors.normals.red} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticWarn             {fg=colors.brights.magenta} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticInfo             {fg=colors.normals.yellow} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticHint             {fg=colors.fg} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        DiagnosticOk               {fg=colors.brights.green} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
        -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
        -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
        -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
        -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
        -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
        -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
        -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
        -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
        -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
        -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

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

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        -- sym"@comment"           { }, -- Comment
        -- sym"@punctuation"       { }, -- Delimiter
        -- sym"@constant"          { }, -- Constant
        -- sym"@constant.builtin"  { }, -- Special
        -- sym"@constant.macro"    { }, -- Define
        -- sym"@define"            { }, -- Define
        -- sym"@macro"             { }, -- Macro
        -- sym"@string"            { }, -- String
        -- sym"@string.escape"     { }, -- SpecialChar
        -- sym"@string.special"    { }, -- SpecialChar
        -- sym"@character"         { }, -- Character
        -- sym"@character.special" { }, -- SpecialChar
        -- sym"@number"            { }, -- Number
        -- sym"@boolean"           { }, -- Boolean
        -- sym"@float"             { }, -- Float
        -- sym"@function"          { }, -- Function
        -- sym"@function.builtin"  { }, -- Special
        -- sym"@function.macro"    { }, -- Macro
        -- sym"@parameter"         { }, -- Identifier
        -- sym"@method"            { }, -- Function
        -- sym"@field"             { }, -- Identifier
        -- sym"@property"          { }, -- Identifier
        -- sym"@constructor"       { }, -- Special
        -- sym"@conditional"       { }, -- Conditional
        -- sym"@repeat"            { }, -- Repeat
        -- sym"@label"             { }, -- Label
        -- sym"@operator"          { }, -- Operator
        -- sym"@keyword"           { }, -- Keyword
        -- sym"@exception"         { }, -- Exception
        -- sym"@variable"          { }, -- Identifier
        -- sym"@type"              { }, -- Type
        -- sym"@type.definition"   { }, -- Typedef
        -- sym"@storageclass"      { }, -- StorageClass
        -- sym"@structure"         { }, -- Structure
        -- sym"@namespace"         { }, -- Identifier
        -- sym"@include"           { }, -- Include
        -- sym"@preproc"           { }, -- PreProc
        -- sym"@debug"             { }, -- Debug
        -- sym"@tag"               { }, -- Tag

    }
end)

return theme
