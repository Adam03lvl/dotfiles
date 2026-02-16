vim.g.mapleader= " "
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>",{})

vim.keymap.set("n", "<leader>hh", "<cmd>HexToggle<CR>",{})

vim.keymap.set("n", "<leader>bd", "<cmd>DBUI<CR>",{})

local term_map = require("terminal.mappings")

vim.keymap.set("n", "<leader>to", term_map.toggle)
vim.keymap.set("n", "<leader>tr", term_map.run(nil, {autoclose=true}))

vim.keymap.set("n", "<leader>tt", function()
  local tab = vim.fn.input("Tab size: ")
  tab = tonumber(tab)
  if tab then
    -- Set global defaults
    vim.opt.tabstop = tab
    vim.opt.softtabstop = tab
    vim.opt.shiftwidth = tab
    -- Update all open buffers
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_loaded(buf) then
        vim.bo[buf].tabstop = tab
        vim.bo[buf].softtabstop = tab
        vim.bo[buf].shiftwidth = tab
      end
    end
    print("Tab size set to " .. tab)
  else
    print("Invalid number")
  end
end, {})

vim.keymap.set("n","<leader>gs",vim.cmd.Git)
vim.keymap.set("n","<leader>gm","<cmd>Git commit<CR>")
vim.keymap.set("n","<leader>gp","<cmd>Git push<CR>")
vim.keymap.set("n","<leader>gP","<cmd>Git pull<CR>")
vim.keymap.set("n","<leader>gl","<cmd>Git log <CR>")

vim.keymap.set("n","<leader>gh","<cmd>Gitsigns preview_hunk<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>")
vim.keymap.set("n","<leader>u",vim.cmd.UndotreeToggle)

vim.keymap.set("n","<leader>cb",vim.cmd.CMakeBuild)
vim.keymap.set("n","<leader>cc",vim.cmd.CMakeClean)
vim.keymap.set("n","<leader>cB",vim.cmd.CMakeSelectBuildType)

vim.keymap.set("n","<leader>bb",":DapToggleBreakpoint<CR>")
vim.keymap.set("n","<leader>bc",":DapContinue<CR>")
vim.keymap.set("n","<leader>bn",":DapStepOver<CR>")
vim.keymap.set("n","<leader>bi",":DapStepInto<CR>")
vim.keymap.set("n","<leader>bs",":DapNew<CR>")
vim.keymap.set("n","<leader>bx",":DapTerminate<CR> :lua require('dapui').close()<CR>")
vim.keymap.set("n","<leader>tm",":lua require('dap-python').test_method()<CR>")
vim.keymap.set("n","<leader>tc",":lua require('dap-python').test_class()<CR>")

vim.keymap.set("n","<leader>mc",":Mvn clean<CR>")
vim.keymap.set("n","<leader>mp",":Mvn package<CR>")
vim.keymap.set("n","<leader>mi",":Mvn install<CR>")

vim.keymap.set('n', ':', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
vim.keymap.set('n', '<leader><leader>', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

vim.keymap.set('v', '<C-p>', ':CarbonNow<CR>', {silent = true})

vim.keymap.set('n', '<C-b>', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { noremap = true })

vim.keymap.set("x", "<leader>re<CR>", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf<CR>", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set( "n", "<leader>rI", ":Refactor inline_func")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")
