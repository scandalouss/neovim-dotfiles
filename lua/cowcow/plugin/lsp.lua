local lsp = require('lsp-zero')

lsp.preset('recommended')


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'eslint',
        'rust_analyzer',
        'jdtls',
        'gopls',
        'cmake',
        'bashls',
        'omnisharp',
        'omnisharp_mono',
        'asm_lsp',
        'clangd',
        'cssls',
        'lua_ls',
        'intelephense',
        'jedi_language_server',
        'sqlls',
        'ruby_ls',
        'lemminx',
        'yamlls',
        'jqls',
        'vimls',
    },

    handlers = {
        lsp.default_setup,
        lua_ls = function()
            local lua_opts = lsp.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }

})

--formatters and linters and shit
require("mason-null-ls").setup({
    ensure_installed={
        "clang-format",
        "stylua",
        "csharpier",
        "jq",
        "cmakelang",
        "cpplint",
        "cmakelint",
    }
})

lsp.setup()
