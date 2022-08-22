local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymaps = require'scripts.keymaps'
colorschemes = require'scripts.colorschemes'

vim.g.mapleader = " "

-- toggle neovim tree side panel
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)

-- copilot related keybinds
map("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
map('n', '<leader>x', ':Copilot disable<CR>', opts)
map('n', '<leader>e', ':Copilot enable<CR>', opts)

-- move to buffer
map('n', '<leader>,', ':BufferPrevious<CR>', opts)
map('n', '<leader>.', ':BufferNext<CR>', opts)

-- reorder buffers
map('n', '<leader-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<leader->>', ' :BufferMoveNext<CR>', opts)

-- move to buffer n
map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>2', ':BufferGoto 2<CR>', opts)
map('n', '<leader>3', ':BufferGoto 3<CR>', opts)
map('n', '<leader>4', ':BufferGoto 4<CR>', opts)
map('n', '<leader>5', ':BufferGoto 5<CR>', opts)
map('n', '<leader>6', ':BufferGoto 6<CR>', opts)
map('n', '<leader>7', ':BufferGoto 7<CR>', opts)
map('n', '<leader>8', ':BufferGoto 8<CR>', opts)
map('n', '<leader>9', ':BufferGoto 9<CR>', opts)
map('n', '<leader>0', ':BufferLast<CR>', opts)

-- close buffer
map('n', '<leader>c', ':BufferClose<CR>', opts)

-- pick buffer by its value
map('n', '<leader>p', ':BufferPick<CR>', opts)

-- better indenting of visual block
map('v', '<', "<gv", opts)
map('v', '>', '>gv', opts)

-- format buffer
map('n', '<leader>fb', ':lua vim.lsp.buf.formatting_sync()<CR>', opts)

-- resizing of splits
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- changing focus of splits
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- default ish telescope keybinds
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)

-- save and load session (currently saving is automated on close)
map('n', '<leader>sl', ':SessionLoad<CR>', opts)
map('n', '<leader>ss', ':SessionSave<CR>', opts)

-- mimics tabout behavior
map('i', '<A-a>', '<C-o>a', opts)

-- open new file
map('n', '<Leader>fn', ':enew <CR>', opts)

-- help menus
map('n', '<leader>mk', '<cmd>lua keymaps.show_keymaps()<CR>', opts)
map('n', '<leader>mc', '<cmd>lua colorschemes.show_menu()<CR>', opts)
map('n', '<leader>mh', ':Telescope help_tags<CR>', opts)

-- diagnostics
map('n', '<leader>dd', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '<leader>dl', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>dh', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)

-- git
map('n', '<leader>gg', '<cmd>LazyGit<CR>', opts)

