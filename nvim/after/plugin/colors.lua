require('material').setup({
    -- lualine_style="stealth",
})

require("catppuccin").setup({
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    },
})

local function setColor()
    -- vim.cmd 'colorscheme nightfly'
    -- vim.cmd 'colorscheme moonfly'
    vim.cmd 'colorscheme catppuccin'
    -- vim.cmd 'colorscheme material'
    -- vim.g.material_style = "deep ocean"
end

setColor()
