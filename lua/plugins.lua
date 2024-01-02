local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  --[[ Manager ]]
  'williamboman/mason.nvim', -- Package manager

  -- LSP configs
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  --[[ Workbench ]]
  'folke/tokyonight.nvim',        -- Theme
  'kyazdani42/nvim-web-devicons', -- File icons
  'nvim-lualine/lualine.nvim',    -- Statusline
  'akinsho/nvim-bufferline.lua',  -- Tabs

  --[[ Text Editor ]]
  {
    -- Syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({
        with_sync = true
      })
    end,
  },
  'nvim-treesitter/nvim-treesitter-context',


  -- Autocomplete
  'hrsh7th/nvim-cmp',                -- Completion engine plugin
  'hrsh7th/cmp-nvim-lsp',            -- `nvim-cmp` source for builtin LSP
  'hrsh7th/cmp-buffer',              -- `nvim-cmp` source for buffer words
  'onsails/lspkind-nvim',            -- Pictograms for completion items
  'windwp/nvim-autopairs',           -- Auto close () [] {} '' ""
  'windwp/nvim-ts-autotag',          -- Auto close / rename HTML tag
  'L3MON4D3/LuaSnip',                -- Snippet

  'jose-elias-alvarez/null-ls.nvim', -- Code formatter
  'nvimdev/lspsaga.nvim',            -- LSP UIs

  {
    'numToStr/Comment.nvim',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl'
  },

  'norcalli/nvim-colorizer.lua', -- Color highlighter

  --[[Features]]
  'nvim-lua/plenary.nvim',                      -- Common utilities
  'nvim-telescope/telescope.nvim',              -- Fuzzy finder
  'nvim-telescope/telescope-file-browser.nvim', -- File browser
  'akinsho/toggleterm.nvim',                    -- Terminal

  'lewis6991/gitsigns.nvim',                    -- Git decorations
  'dinhhuy258/git.nvim',                        -- Lua `vim-fugitive`

  {
    'iamcco/markdown-preview.nvim',
    build = function() vim.fn['mkdp#util#install']() end,
  },

  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },
}, {
  checker = {
    enabled = true,
  }
})
