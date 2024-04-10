vim.g.mapleader= " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>",{})

vim.keymap.set("n","<leader>gs",vim.cmd.Git)
vim.keymap.set("n","<leader>gm","<cmd>Git commit<CR>")
vim.keymap.set("n","<leader>gp","<cmd>Git push<CR>")
vim.keymap.set("n","<leader>gl","<cmd>Git log --oneline<CR>")

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
vim.keymap.set("n","<leader>br",":lua require('dap-python').test_method()<CR>")

vim.keymap.set("n","<leader>mc",":Mvn clean<CR>")
vim.keymap.set("n","<leader>mp",":Mvn package<CR>")

vim.keymap.set('n', ':', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
vim.keymap.set('n', '<leader><leader>', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

vim.keymap.set('v', '<C-p>', ':CarbonNow<CR>', {silent = true})

vim.keymap.set('n', '<C-b>', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { noremap = true })
