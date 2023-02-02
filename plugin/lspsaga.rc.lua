local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
  },
  outline = {
    win_position = 'left',
  }
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gs', '<cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
vim.keymap.set('n', '[e', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', ']e', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<leader>o', '<cmd>Lspsaga outline<CR>', opts)

-- Code action
local codeaction = require('lspsaga.codeaction')
vim.keymap.set('n', '<leader>ca', function() codeaction:code_action() end, { silent = true })
vim.keymap.set('v', '<leader>ca', function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-U>', true, false, true))
  codeaction:range_code_action()
end, { silent = true })
