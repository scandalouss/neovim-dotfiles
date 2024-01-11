--disable netrw
vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1

--now the fun begins
local tree=require("nvim-tree")

tree.setup({
    renderer={
        add_trailing=true,
    }
})

--remaps are inn remap.lua
