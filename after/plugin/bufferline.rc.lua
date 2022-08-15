local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup({
  options = {
    mode = 'tabs',
    indicator = {
      style = 'underline'
    },
    show_tab_indicators = false,
    show_close_icon = false,
    show_buffer_close_icons = false,
    always_show_bufferline = false,
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>')
