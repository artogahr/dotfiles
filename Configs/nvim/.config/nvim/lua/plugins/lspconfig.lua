return {
        "neovim/nvim-lspconfig",
        name = "neovim-lspconfig",
        priority=1000,
        dependencies = {
                "kosayoda/nvim-lightbulb",
        },
        config = function()
                local capabilities = require("cmp_nvim_lsp").default_capabilities()

                require("lspconfig").rust_analyzer.setup({
                        capabilities = capabilities,
                })

                -- Key mappings for LSP functionality
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
                -- You might also want these related LSP keymaps:
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
        end
}
