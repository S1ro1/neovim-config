local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local keymaps = os.getenv("HOME") .. '/.config/nvim/lua/key-maps/init.lua'

utils = require'utils'

vim.g.mapleader = " "

-- toggle neovim tree side panel
map('n', '<A-e>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>t', ':NvimTreeOpen<CR>', opts)

-- copilot related keybinds
map("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
map('n', '<C-d>', ':Copilot disable<CR>', opts)
map('n', '<C-e>', ':Copilot enable<CR>', opts)

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
map('n', '<leader>f', ':lua vim.lsp.buf.formatting_sync()<CR>', opts)

-- zen mode?
map("n", "<leader>m", ":TZAtaraxis<CR>", opts)

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
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- save and load session (currently saving is automated on close)
map('n', '<leader>l', ':SessionLoad<CR>', opts)
map('n', '<leader>s', ':SessionSave<CR>', opts)

-- mimics tabout behavior
map('i', '<A-a>', '<C-o>a', opts)

-- open new file
map('n', '<Leader>n', ':enew <CR>', opts)

-- show keymaps
map('n', '<leader>k', '<cmd>lua utils.show_keymaps()<CR>', opts)

