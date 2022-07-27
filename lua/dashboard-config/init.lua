local db = require('dashboard')
local home = os.getenv("HOME")
local keymaps = require('scripts.keymaps')
local colorschemes = require('scripts.colorschemes')

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
    shortcut = 'SPC fn',
    action ='DashboardNewFile'
  },
  {
    icon = ' ',
    desc = 'Find file                                       ',
    shortcut = 'SPC ff',
    action = 'Telescope find_files'
  },
  {
    icon = ' ',
    desc = 'Live grep                                       ',
    shortcut = 'SPC fg',
    action = 'Telescope live_grep'
  },
  {
    icon = ' ',
    desc = 'Recent session                                  ',
    shortcut = 'SPC sl',
    action = 'SessionLoad'
  },
  {
    icon = ' ',
    desc = 'Keymaps                                         ',
    shortcut = 'SPC mk',
    action = 'lua keymaps.show_keymaps()'
  },
  {
    icon = ' ',
    desc = 'Change colorscheme                              ',
    shortcut = 'SPC mc',
    action = 'lua colorschemes.show_menu()'
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
  '--   Currently loaded ' .. n_plugins .. ' plugins --    ',
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

