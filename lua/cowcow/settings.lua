--ALL VIM EDITOR OPTIONS/VIM PLUGIN OPTIONS
--THAT AREN'T LUA GO HERE

--theme stuff
vim.cmd("colorscheme sleepyhollow")
vim.cmd("syntax on")
vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight Normal ctermbg=none")
vim.cmd("highlight NonText guibg=none")
vim.cmd("highlight NonText ctermbg=none")
vim.cmd("let g:airline_theme='biogoo'")

vim.opt.termguicolors=true

--main settings
vim.opt.nu=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.wrap=false
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.guicursor=""
vim.opt.clipboard=unnamedplus
vim.opt.updatetime=50
vim.opt.lazyredraw=true
vim.opt.splitbelow=true
