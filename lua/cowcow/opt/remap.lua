vim.g.mapleader=" " --set leader to space : )

--new lines above and below without leaving normal mode
vim.keymap.set("n","<leader>o","o<Esc>") --below
vim.keymap.set("n","<leader>O","O<Esc>") --above


--nvim tree remaps
local nvimtree=require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

--debugger
vim.keymap.set("n", "<leader>db",vim.cmd.DapToggleBreakpoint)
vim.keymap.set("n","<leader>dr",vim.cmd.DapContinue)

--telescope
local telescope=require('telescope.builtin')
vim.keymap.set("n","<leader>tf",telescope.find_files)
vim.keymap.set('n','<leader>tg',telescope.live_grep)
