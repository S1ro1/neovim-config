local db = require('dashboard')
local home = os.getenv("HOME")
local keymaps = home .. '/.config/nvim/lua/key-maps/init.lua'
local utils = require('utils')

db.session_directory = home .. '/.tmp/nvim'

db.custom_header = {
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[                               ]],
	[[   ▄████▄              ▒▒▒▒▒   ]],
	[[  ███▄█▀              ▒ ▄▒ ▄▒  ]],
	[[ ▐████     █  █  █   ▒▒▒▒▒▒▒▒▒ ]],
	[[  █████▄             ▒▒▒▒▒▒▒▒▒ ]],
	[[   ▀████▀            ▒ ▒ ▒ ▒ ▒ ]],
	[[                               ]],
  [[.__   __.  _______   ______   ____    ____  __  .___  ___.]],
  [[|  \ |  | |   ____| /  __  \  \   \  /   / |  | |   \/   |]],
  [[|   \|  | |  |__   |  |  |  |  \   \/   /  |  | |  \  /  |]],
  [[|  . `  | |   __|  |  |  |  |   \      /   |  | |  |\/|  |]],
  [[|  |\   | |  |____ |  `--'  |    \    /    |  | |  |  |  |]],
  [[|__| \__| |_______| \______/      \__/     |__| |__|  |__|]],
  [[                                                          ]]
}

db.custom_center = {
  {
    icon = ' ',
    desc = 'New file                                        ',
    shortcut = '<leader>n',
    action ='DashboardNewFile'
  },
  {
    icon = ' ',
    desc = 'Find file                                      ',
    shortcut = '<leader>ff',
    action = 'Telescope find_files'
  },
  {
    icon = ' ',
    desc = 'Live grep                                      ',
    shortcut = '<leader>fg',
    action = 'Telescope live_grep'
  },
  {
    icon = 'פּ ',
    desc = 'File tree                                       ',
    shortcut = '<leader>t',
    action = 'NvimTreeOpen'
  },
  {
    icon = ' ',
    desc = 'Recent session                                  ',
    shortcut = '<leader>l',
    action = 'SessionLoad'
  },
  {
    icon = ' ',
    desc = 'Keymaps                                         ',
    shortcut = '<leader>k',
    action = 'lua utils.mount()'
  }
}

db.header_pad = 3
db.center_pad = 3
db.footer_pad = 3

local n_plugins = vim.fn.len(
  vim.fn.globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1)
)

db.custom_footer = {
  '',
  '',
  '--   Currently loaded ' .. n_plugins .. ' plugins --',
  '',
  '',
  "Software is like sex, it's better when it's free",
  '',
  ' - Linus Torvalds                            ',

}

--vim.cmd[[highlight DashboardHeader guifg=#8661ad]]
vim.cmd[[highlight DashBoardHeader guifg=#EEBD35]]
vim.cmd[[highlight DashboardShortcut guifg=#E64B2A]]
vim.cmd[[highlight DashboardCenterIcon guifg=#82811D]]
vim.cmd[[highlight DashboardCenter guifg=#82811D]]

