-- his file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  use 'chentoast/marks.nvim'

  use {
      'kristijanhusak/vim-dadbod-ui',
      requires = {
        'tpope/vim-dadbod',
        'kristijanhusak/vim-dadbod-completion'
      }
  }

  use 'lewis6991/gitsigns.nvim'

  use 'RaafatTurki/hex.nvim'

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }

  use({
      "stevearc/oil.nvim",
      config = function()
          require("oil").setup()
      end,
  })

  use {
      "zbirenbaum/copilot.lua",
       cmd = "Copilot",
       event = "InsertEnter",
       config = function()
           require("copilot").setup({})
       end,
  }

  use {"ellisonleao/carbon-now.nvim", config = function() require('carbon-now').setup() end}

  use 'catppuccin/nvim'

  use 'm4xshen/autoclose.nvim'

  use 'mikelue/vim-maven-plugin'

  use { 'jonarrien/telescope-cmdline.nvim' }

  use 'folke/neodev.nvim'

  use 'theHamsta/nvim-dap-virtual-text'

  use {
  "klen/nvim-test",
  config = function()
    require('nvim-test').setup()
  end
  }

  use 'j-morano/buffer_manager.nvim'

  use {
	'nvim-telescope/telescope.nvim',
  	tag = '0.1.2',
	requires = {'nvim-lua/plenary.nvim'}
  }

  use {
      'mfussenegger/nvim-dap-python',
      requires = {'rcarriga/nvim-dap-ui'}
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use({
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
      ft = { "markdown" },
  })

  use {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
  }

  use {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
  }

  use {
      "rcarriga/nvim-dap-ui", 
      requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", 'rcarriga/cmp-dap'}
  }

  use 'mfussenegger/nvim-jdtls'

  use ({
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  })

  use 'Civitasv/cmake-tools.nvim'

  use 'vim-scripts/npm.vim'

  use ({'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'})
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use({"L3MON4D3/LuaSnip", tag = "v2.*"})

  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use "derektata/lorem.nvim"

  use 'marko-cerovac/material.nvim'

  use ({
      'christoomey/vim-tmux-navigator',
      lazy=false
  })

  use ('Avimitin/neovim-deus')

  end)
