--[[ General ]]
vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.backup = false
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.shell = 'fish'
if vim.fn.has('macunix') == 1 then
  -- Use macOS clipboard
  vim.opt.clipboard:append { 'unnamedplus' }
end

--[[ Appearance ]]
vim.opt.background = 'dark'
vim.opt.termguicolors = true

-- Highlight yanked text
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]

--[[ Window ]]
vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.laststatus = 2 -- Always show status line
vim.opt.inccommand = 'split'

-- [[ Editor ]]
vim.g.mapleader = ','
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.scrolloff = 10

-- To allow backspacing over everything in insert mode
vim.opt.backspace = { 'start', 'eol', 'indent' }

-- Undercurl
vim.cmd([[let &t_Cs = '\e[4:3m']])
vim.cmd([[let &t_Ce = '\e[4:0m']])

--[[ Formatting ]]
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

--[[ Search ]]
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

--[[ Keymaps ]]
local keymap = vim.keymap

-- Increment/decrement numbers
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set('n', '<C-a>', 'gg<S-v>G') -- Select all
keymap.set('n', 'te', ':tabedit') -- New tab

-- Toggle between open windows
keymap.set('n', '<Space>', '<C-w>w')
