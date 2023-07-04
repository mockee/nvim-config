local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'lua',
    'vim',
    'fish',
    'json',
    'yaml',
    'tsx',
    'typescript',
    'css',
    'html',
    'make',
    'markdown',
    'markdown_inline',
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
