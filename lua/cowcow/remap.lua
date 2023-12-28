vim.g.mapleader=" "

--new lines above and below without leaving normal mode
vim.keymap.set("n","<leader>o","o<Esc>") --below
vim.keymap.set("n","<leader>O","O<Esc>") --above


--nvim tree remaps
local nvimtree=require("nvim-tree.api")
vim.keymap.set("n", "<leader>d", vim.cmd.NvimTreeToggle)

