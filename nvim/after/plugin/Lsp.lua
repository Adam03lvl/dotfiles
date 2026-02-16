-- Mason setup
require('mason').setup()
require('mason-lspconfig').setup()

local vue_path = "/home/fr3udian/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"

vim.lsp.config["ts_ls"] = {
  filetypes = {'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'vue'},
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_path,
        languages = { "vue" },
      },
    },
  }
}

vim.lsp.config["vue_ls"] = {
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue'}
}
