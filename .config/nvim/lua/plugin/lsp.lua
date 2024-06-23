return {
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require'lspconfig'
            lspconfig.clangd.setup {}
            lspconfig.pyright.setup {}
            lspconfig.rust_analyzer.setup {}
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        config = function ()
            local cmp = require'cmp'

            cmp.setup {
                snippet = {
                    expand = function (args)
                        vim.snippet.expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert {
                    ['<CR>'] = cmp.mapping.confirm { select = true },
                },
                sources = {
                    { name = 'nvim_lsp' }
                }
            }
        end,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
    }
}
