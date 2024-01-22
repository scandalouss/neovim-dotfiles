local config=require("cowcow.themes.config")
local none='none'
local theme={}

function theme.setup()
    local options=config.options
    local pal=require("cowcow.themes.colors."..options.palette)

    theme.highlights={
        --editor ui
        ColorColumn={bg=pal.bg2},
        Conceal={fg=pal.normals.white},
        Cursor={fg=pal.bg1,bg=pal.fg1},
        CursorIM={link='Cursor'},
        lCursor={link='Cursor'},
        CursorLine={bg=pal.bg2},
        CursorColumn={bg=pal.bg2},
        CursorLineNr={fg=pal.normals.green,bg=pal.bg1},
        DiffAdd={fg=pal.normals.white,bg=pal.normals.green},
        DiffChange={fg=pal.normals.white,bg=pal.brights.gray},
        DiffDelete={bg=pal.bg2},
        DiffText={fg=pal.normals.white,bg=pal.normals.red},
        Directory={fg=pal.normals.cyan},
        EndOfBuffer={fg=pal.bg4},
        FoldColumn={fg=pal.normals.white,bg=pal.bg2},
        Folded={fg=pal.fg4,bg=pal.bg1},
        FloatBorder={fg=pal.normals.blue,bg=pal.bg2},
        FloatTitle={fg=pal.brights.blue,bg=pal.bg2},
        Ignore={fg=pal.normals.white},
        IncSearch={fg=pal.fg1,bg=pal.brights.magenta},
        LineNr={fg=pal.fg2,bg=pal.bg2},
        MatchParen={fg=pal.normals.magenta},
        ModeMsg={},
        MoreMsg={},
        MsgArea={},
        MsgSeparator={},
        NonText={fg=pal.bg4,bg=pal.bg2},
        Normal={fg=pal.fg1,bg=pal.bg1},
        NormalFloat={fg=pal.normals.white,bg=pal.bg2},
        NormalNC={link='Normal'},
        Pmenu={fg=pal.fg1,bg=pal.bg2},
        PmenuSel={bg=pal.bg3},
        Question={fg=pal.brights.cyan},
        QuickFixLine={bg=pal.brights.gray},
        Search={fg=pal.brights.white,bg=pal.normals.red},
        SignColumn={link='FoldColumn'},
        SpecialKey={fg=pal.fg2,bg=pal.bg2},
        SpellBad={},
        SpellCap={},
        SpellLocal={},
        SpellRare={},
        StatusLine={fg=pal.bg2,bg=pal.bg3},
        StatusLineNC={link='StatusLine'},
        Substitute={},
        TablineFill={},
        Tabline={},
        TablineSel={},
        TermCursor={},
        TermCursorNC={},
        Title={fg=pal.fg1},
        VertSplit={fg=pal.fg3,bg=pal.bg3},
        Visual={},
        VisualNOS={},
        WarningMsg={fg=pal.fg1,bg=pal.normals.magenta},
        Whitespace={},
        WildMenu={fg=pal.normals.green,bg=pal.bg1},
        WinBar={},

        --syntax
        ErrorMsg={fg=pal.normals.red,bg=pal.bg2,bold=true},
        Comment={fg=pal.normals.white,bg=none},

        Constant={fg=pal.normals.cyan,bg=none},
        String={fg=pal.normals.green},
        Number={link='Constant'},
        Boolean={link='Constant'},
        Character={link='Constant'},
        Float={link='Constant'},

        Identifier={fg=pal.normals.magenta,italic=true},
        Function={fg=pal.normals.yellow,italic=true},

        Statement={fg=pal.normals.red},
        Conditional={link='Statement'},
        Repeat={link='Statement'},
        Keyword={link='Statement',bold=true},
        Label={fg=pal.normals.blue},
        Exception={link='Statement'},
        Operator={link='Statement'},

        PreProc={fg=pal.normals.red},
        Define={link='Preproc'},
        PreCondit={fg=pal.normals.red},
        Include={fg=pal.normals.red},
        Macro={fg=pal.normals.blue},

        Type={fg=pal.normals.magenta},
        Typedef={link='Type'},
        StorageClass={link='Type',italic=true},
        Structure={link='Type'},

        Special={fg=pal.brights.yellow},
        SpecialChar={link='Special'},
        Delimiter={link='Special'},
        SpecialComment={link='Special'},
        Debug={link='Special'},
        Tag={link='Special'},

        Error={},
        Todo={fg=pal.fg2},
        Underlined={},
        VimCommand={},
        RubyDefine={},

        ---ruby highlighting
        rubyAttribute={fg=pal.normals.gray},
        rubyLocalVariableOrMethod={fg=pal.normals.blue},
        rubyGlobalVariable={link='rubyLocalVariableOrMethod',italic=true},
        rubyInstanceVariable={fg=pal.normals.blue},
        rubyKeyword={fg=pal.normals.red},
        rubyKeywordAsMethod={link='rubyKeyword',bold=true},
        rubyClassDeclaration={link='rubyKeyword',bold=true},
        rubyClass={link='rubyKeyword',bold=true},
        rubyNumber={fg=pal.normals.const},

        ---js highlighting
        jsBuiltins={fg=pal.normals.gray},
        jsFunction={fg=pal.normals.yellow,bold=true},
        jsGlobalObjects={fg=pal.normals.magenta},
        jsAssignmentExps={fg=pal.normals.blue},

        ---html highlights
        htmlLink={fg=pal.normals.blue,underline=true},
        htmlStatement={fg=pal.normals.red},
        htmlSpecialTagName={link='htmlStatement'},
        mkdCode={fg=pal.normals.gray},


        --diagnostics/lsp
        DiagnosticError={},
        DiagnosticWarn={},
        DiagnosticInfo={},
        DiagnosticHint={},
        DiagnosticUnderlineError={},
        DiagnosticUnderlineWarn={},
        DiagnosticUnderlineInfo={},
        DiagnosticUnderlineHint={},
        DiagnosticLineNrError={},
        DiagnosticLineNrWarn={},
        DiagnosticLineNrInfo={},
        DiagnosticLineNrHint={},

    }

    theme.terminal_colors={

    }

    for option,value in pairs(theme.terminal_colors) do
        vim.g[option]=value
    end

    theme.highlights=vim.tbl_extend("force",{},theme.highlights,options.highlights)

    for group,colors in pairs(theme.highlights) do
        if colors.style then
            if type(colors.style)=="table" then
                colors=vim.tbl_extend("force",colors,colors.style)
            end
            colors.style=nil
        end
        vim.api.nvim_set_hl(0,group,colors)
    end
end
return theme
