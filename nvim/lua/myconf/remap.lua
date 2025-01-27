vim.g.mapleader= " "
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>",{})

vim.keymap.set("n", "<leader>hh", "<cmd>HexToggle<CR>",{})

vim.keymap.set("n", "<leader>bd", "<cmd>DBUI<CR>",{})

vim.keymap.set("n","<leader>gs",vim.cmd.Git)
vim.keymap.set("n","<leader>gm","<cmd>Git commit<CR>")
vim.keymap.set("n","<leader>gp","<cmd>Git push<CR>")
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
vim.keymap.set("n","<leader>ba",":DapContinue<CR>")
vim.keymap.set("n","<leader>tm",":lua require('dap-python').test_method()<CR>")
vim.keymap.set("n","<leader>tc",":lua require('dap-python').test_class()<CR>")

vim.keymap.set("n","<leader>mc",":Mvn clean<CR>")
vim.keymap.set("n","<leader>mp",":Mvn package<CR>")

vim.keymap.set('n', ':', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
vim.keymap.set('n', '<leader><leader>', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

vim.keymap.set('v', '<C-p>', ':CarbonNow<CR>', {silent = true})

vim.keymap.set('n', '<C-b>', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { noremap = true })

vim.keymap.set("x", "<leader>re", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set( "n", "<leader>rI", ":Refactor inline_func")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")
