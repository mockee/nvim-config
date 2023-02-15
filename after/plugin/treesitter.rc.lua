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
    'css',
    'html',
    'make',
    'markdown',
  },
  autotag = {
    enable = true,
  },
}
