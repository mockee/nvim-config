local status, blankline = pcall(require, 'indent_blankline')
if (not status) then return end

blankline.setup({
  show_current_context = true,
})
