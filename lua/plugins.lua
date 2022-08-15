local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  --[[ Manager ]]
  use 'wbthomason/packer.nvim' -- Plugin manager
  use 'williamboman/mason.nvim' -- Package manager

  -- LSP configs
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  --[[ Workbench ]]
  use 'folke/tokyonight.nvim' -- Theme
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'akinsho/nvim-bufferline.lua' -- Tabs

  --[[ Text Editor ]]
  use { -- Syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({
        with_sync = true
      })
    end,
  }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp' -- Completion engine plugin
  use 'hrsh7th/cmp-nvim-lsp' -- `nvim-cmp` source for builtin LSP
  use 'hrsh7th/cmp-buffer' -- `nvim-cmp` source for buffer words
  use 'onsails/lspkind-nvim' -- Pictograms for completion items
  use 'windwp/nvim-autopairs' -- Auto close () [] {} '' ""
  use 'windwp/nvim-ts-autotag' -- Auto close / rename HTML tag
  use 'L3MON4D3/LuaSnip' -- Snippet

  use 'jose-elias-alvarez/null-ls.nvim' -- Code formatter
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua' -- Color highlighter

  --[[Features]]
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- File browser
  use 'akinsho/toggleterm.nvim' -- Terminal

  use 'lewis6991/gitsigns.nvim' -- Git decorations
  use 'dinhhuy258/git.nvim' -- Lua `vim-fugitive`

  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  })
end)
