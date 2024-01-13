--vim shit
local cmd=vim.cmd
local g=vim.g
local fn=vim.fn
local none='none'

--set theme here
local theme=require("cowcow.themes.colors.crustacean")

local highlight=function(group,hi)
    hi=hi or {}
    if type(hi)=='string' then
        cmd.hi(string.format('link %s %s',group,hi))
        return
    end

    local format=''

    if hi.fg then
        format=format..' guifg='..hi.fg
    end
    if hi.bg then
        format=format..' guibg='..hi.bg
    end
    if hi.guisp then
        format=format..' guisp='..hi.guisp
    end
    if hi.style then
        format=format..' gui='..hi.style
    end

    cmd.hi(group..' '..format)
end

local highlights=function(theme)
    cmd.hi('clear')
    if fn.exists('syntax_on') then
        cmd.syntax('reset')
    end
    --name and terminal colors
    g.colors_name=theme.name
    g.terminal_color_0=theme.bg1
    g.terminal_color_1=theme.normals.red
    g.terminal_color_2=theme.normals.red
    g.terminal_color_3=theme.bg4
    g.terminal_color_4=theme.normals.yellow
    g.terminal_color_5=theme.normals.gray
    g.terminal_color_6=theme.fg3
    g.terminal_color_7=theme.normals.green
    g.terminal_color_8=theme.bg2
    g.terminal_color_9=theme.normals.magenta
    g.terminal_color_10=theme.fg2
    g.terminal_color_11=theme.normals.blue
    g.terminal_color_12=theme.normals.magenta
    g.terminal_color_13=theme.normals.cyan
    g.terminal_color_14=theme.fg4
    g.terminal_color_15=theme.normals.white

    --highlight groups start here
    local hi={}
    

    for group,highlights in pairs(hi) do
        highlight(group,highlights)
    end
end
highlights(theme)
