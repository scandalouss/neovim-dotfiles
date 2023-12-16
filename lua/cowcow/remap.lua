vim.g.mapleader=" "
vim.keymap.set("n", "<leader>t", vim.cmd.Term)

--nvim tree remaps
local nvimtree=require("nvim-tree.api")
vim.keymap.set("n", "<leader>d", vim.cmd.NvimTreeToggle)
