--boilerplate shit
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--okay the plugins go here

require("lazy").setup({

    --directory listing
    "nvim-tree/nvim-tree.lua",

    --gentoo syntax, its not lua but oh well
    "gentoo/gentoo-syntax",

    --autopairs
    "windwp/nvim-autopairs",

    --better highlighting
    "nvim-treesitter/nvim-treesitter",

    --formatting nonsense for mason, settings are in lsp.lua
    "jay-babu/mason-null-ls.nvim",
    "nvimtools/none-ls.nvim",

    --file finder/fuzzy finder/it finds shit
    {"nvim-telescope/telescope.nvim", tag="0.1.5", dependencies={"nvim-lua/plenary.nvim"}},

    --start screen
    {"goolord/alpha-nvim", dependencies={"nvim-tree/nvim-web-devicons"}},

    --bottom status bar
    "nvim-lualine/lualine.nvim",

    --animations
    "echasnovski/mini.animate",
    "karb94/neoscroll.nvim", --neoscroll cause mini.animate scroll sux

    --LSP, autocorrect features for code
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {"VonHeikemen/lsp-zero.nvim", branch="v3.x"},
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",

    --debugger
    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",

    --discord rpc support cause i'm a nerd
    "andweeb/presence.nvim",

    --highlight colors
    "echasnovski/mini.hipatterns"
})
