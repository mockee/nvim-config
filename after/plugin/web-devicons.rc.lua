local status, devicons = pcall(require, 'nvim-web-devicons')
if (not status) then return end

devicons.setup {
  default = true,
}
