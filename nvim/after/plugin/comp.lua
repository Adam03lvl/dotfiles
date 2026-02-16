local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  enabled = function()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
    or require("cmp_dap").is_dap_buffer()
  end,
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
})

cmp.setup.filetype({
    { "dap-repl", "dapui_watches", "dapui_hover" },
    sources = {
        {name = "dap"}
    }
})

require("luasnip.loaders.from_vscode").load({include = {"python", "c", "cpp", "html", "javascript"}})
