local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true
set.completeopt = "menuone,noselect"
set.wildmenu = true

set.relativenumber = true
set.number = true
set.cursorline = true
set.signcolumn = 'yes'

set.hidden = true
set.mouse = "a"
set.scrolloff = 3

set.title = true
set.clipboard = "unnamedplus"

set.pumheight = 3
vim.g.completion_menu_length = 5

vim.cmd[[highlight Normal           ctermbg=NONE guibg=NONE]]
vim.cmd[[highlight LineNr           ctermbg=NONE guibg=NONE]]
vim.cmd[[highlight SignColumn       ctermbg=NONE guibg=NONE]]
vim.cmd[[highlight NvimTreeNormal   guibg=NONE]]
vim.cmd[[highlight NvimTreeNormalNC guibg=NONE]]


