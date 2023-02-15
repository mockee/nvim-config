# Yan's Neovim Config

<img src="https://user-images.githubusercontent.com/176544/216268319-acb5b6c7-747a-43c7-8711-924c0fc056cf.jpg" width="929">

## Manager

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - A modern plugin manager for Neovim
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Portable package manager for Neovim

### LSP configs

- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

```lua
require('mason-lspconfig').setup {
  -- All servers set up via lspconfig are automatically installed
  automatic_installation = true
}
```

## Workbench

### Theme

Use [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

```lua
require('tokyonight').setup({
  style = 'night',
  transparent = true
})
```

Use [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) with `Hack` font

```
$ brew tap homebrew/cask-fonts
$ brew install --cask font-hack-nerd-font
```

### Statusline

Use [Lualine](https://github.com/nvim-lualine/lualine.nvim) and enable the `tokyonight` colorscheme and `lazy.status`

### Tabs

[akinsho/nvim-bufferline.lua](https://github.com/akinsho/bufferline.nvim/tree/06eb4ad9486bd13440ffea243ea83d314f4a8e7e)

| Normal    | Command               | Description                  |
| --------- | --------------------- | ---------------------------- |
| `te`      | `:tabedit`            | New tab                      |
| `<Tab>`   | `BufferLineCycleNext` | Navigate to the next tab     |
| `<S-Tab>` | `BufferLineCyclePrev` | Navigate to the previous tab |

## Text Editor

### Autocomplete

- Completion
  - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for Neovim coded in Lua
  - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - `nvim-cmp` source for Neovim builtin LSP client
  - [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - `nvim-cmp` source for buffer words
  - [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - vscode-like pictograms for Neovim LSP completion items
  - [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) -- Auto close `()` `[]` `{}` `''` `""`
  - [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) -- Auto close / rename HTML tag
- Snippet
  - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua

### Code Formatter

- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [Configure formatting on save](https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save)

```lua
require('null-ls').setup {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.autopep8,
  }
}
```

### Syntax highlighting

- [Tree-sitter](https://tree-sitter.github.io/tree-sitter/)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### LSP UIs

[glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight LSP plugin based on Neovim's built-in LSP with a highly performant UI

| Normal        | Command                         |
| ------------- | ------------------------------- |
| `gh`          | `Lspsaga lsp_finder`            |
| `gd`          | `Lspsaga peek_definition`       |
| `gs`          | `Lspsaga signature_help`        |
| `gr`          | `Lspsaga rename`                |
| `gl`          | `Lspsaga show_diagnostic`       |
| `[e`          | `Lspsaga diagnostic_jump_next`  |
| `]e`          | `Lspsaga diagnostic_jump_prev`  |
| `K`           | `Lspsaga hover_doc`             |
| `<leader>,cd` | `Lspsaga show_line_diagnostics` |
| `<leader>,ca` | `Lspsaga code_action`           |
| `<leader>o`   | `Lspsaga outline`               |

### Indent Blankline

Use [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

```lua
require('indent_blankline').setup({
  show_current_context = true,
})
```

### Comment

Use [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - Smart and powerful comment plugin for Neovim

| Normal / Visual | Description                                                   |
| --------------- | ------------------------------------------------------------- |
| `gcc` / `gc`    | Toggles the `current line` / `region` using linewise comment  |
| `gbc` / `gb`    | Toggles the `current line` / `region` using blockwise comment |

### Color highlighter

Use [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - The fastest Neovim colorizer

## Features

### Fuzzy Finder

Use [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

| Normal       | Function                  | Description                                                                            |
| ------------ | ------------------------- | -------------------------------------------------------------------------------------- |
| `<leader>ff` | `builtin.find_files`      | Lists files in the current working directory                                           |
| `<leader>fg` | `builtin.live_grep`       | Search for a string in the current working directory and get results live as type      |
| `<leader>fb` | `builtin.buffers`         | Lists open buffers in current Neovim instance                                          |
| `<leader>fr` | `builtin.resume`          | Lists the results incl. multi-selections of the previous picker                        |
| `<leader>fh` | `builtin.help_tags`       | Lists available help tags and opens a new window with the relevant help info on `<cr>` |
| `<leader>fk` | `builtin.keymaps`         | Lists normal mode keymappings                                                          |
| `<leader>b`  | `extensions.file_browser` | Open file browser                                                                      |

### File Browser

Use `telescope.nvim` extension - [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)

| Normal | fb_actions      | Description                                                                   |
| ------ | --------------- | ----------------------------------------------------------------------------- |
| `c`    | create          | Create file/folder at current `path` (trailing path separator creates folder) |
| `r`    | rename          | Rename multi-selected files/folders                                           |
| `d`    | remove          | Delete (multi-)selected files/folders                                         |
| `o`    | open            | Open file/folder with default system application                              |
| `u`    | goto_parent_dir | Go to parent directory                                                        |
| `e`    | goto_home_dir   | Go to home directory                                                          |
| `w`    | goto_cwd        | Go to current working directory (cwd)                                         |
| `t`    | change_cwd      | Change nvim's cwd to selected folder/file(parent)                             |

### Terminal

Use [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

```lua
toggleterm.setup({
  open_mapping = [[<c-\>]],
})
```

### Git

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) -- Super fast git decorations
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim) -- Lua `vim-fugitive`

### Markdown Preview

Use [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

```shell
:MarkdownPreview
```
