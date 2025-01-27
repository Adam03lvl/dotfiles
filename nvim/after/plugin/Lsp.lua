local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.filetype.add({ extension = { templ = "templ" } })
vim.filetype.add({ extension = { sql = "sql" } })

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    }
})

