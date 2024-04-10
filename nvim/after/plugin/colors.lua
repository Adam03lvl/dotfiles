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
    vim.g.material_style = "deep ocean"
    -- vim.cmd 'colorscheme nightfly'
    vim.cmd 'colorscheme catppuccin'
end

setColor()
