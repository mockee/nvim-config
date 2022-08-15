local status, theme = pcall(require, 'tokyonight')
if (not status) then return end

theme.setup({
  style = 'night',
  transparent = true
})

vim.cmd [[colorscheme tokyonight]]
