local status, git = pcall(require, 'git')
if (not status) then return end

-- https://github.com/dinhhuy258/git.nvim
git.setup({
  keymaps = {
    -- Open blame window
    blame = '<Leader>gb',
    -- Close blame window
    quit_blame = 'q',
    -- Open file/folder in git repository
    browse = '<Leader>go',
    -- Opens a new diff that compares against the current index
    diff = '<Leader>gd',
    -- Close git diff
    diff_close = '<Leader>gD',
    -- Revert to the specific commit
  }
})
