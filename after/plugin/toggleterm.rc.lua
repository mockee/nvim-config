local status, toggleterm = pcall(require, 'toggleterm')
if (not status) then return end

toggleterm.setup({
  open_mapping = [[<c-\>]],
  direction = 'float',
  terminal_mappings = true,
  float_opts = {
    width = 120,
    border = 'curved',
    winblend = 0,
  }
})

vim.cmd('autocmd! TermOpen term://*toggleterm#*')

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

--[[
-- Custom terminal usage
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true })
local htop = Terminal:new({ cmd = 'htop', hidden = true})

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

function _HTOP_TOGGLE()
  htop:toggle()
end
--]]
