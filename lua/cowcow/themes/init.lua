local M={}
local config=require("cowcow.themes.config")
local highlights=require("cowcow.themes.highlights")

function M.letsgo()
    if vim.g.colors_name then
        vim.cmd "hi clear"
    end

    if vim.api.nvim_get_option "termguicolors"==false then
        vim.opt.termguicolors=true
    end

    vim.g.colors_name=config.options.palette

    config.setup()
    highlights.setup()
end

M.letsgo()

return M
