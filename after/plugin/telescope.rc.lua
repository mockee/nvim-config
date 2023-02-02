local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local function open_file_browser()
  telescope.extensions.file_browser.file_browser({
    path = '%:p:h',
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = 'normal',
  })
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    layout_config = {
      horizontal = {
        preview_cutoff = 80,
      },
    },
    mappings = {
      n = {
        ['q'] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end,
        },
        ['n'] = {
          -- your custom normal mode mappings
          ['N'] = fb_actions.create,
          ['u'] = fb_actions.goto_parent_dir,
        },
      },
    },
  },
}

telescope.load_extension('file_browser')

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fr', builtin.resume)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fk', builtin.keymaps)
vim.keymap.set('n', '<leader>b', open_file_browser)
