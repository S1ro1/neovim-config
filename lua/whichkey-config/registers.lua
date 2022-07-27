local wk = require('which-key')
local colorschemes = require'scripts.colorschemes'
local keymaps = require'scripts.keymaps'

wk.register({
  f = {
    name = "file",
    n = { "<cmd>enew<cr>", "create new file" },
    f = { "<cmd>Telescope find_files<cr>", "find file" },
    q = { "<cmd>lua vim.lsp.buf.formatting_sync()<cr>", "format file"},
    g = { "<cmd>Telescope live_grep<cr>", "grep" },
    b = { "<cmd>Telescope buffers<cr>", "buffers" },
  }
}, {prefix = "<leader>"})

wk.register({
  s = {
    name = "session",
    s = { "<cmd>SessionSave<cr>", "session save"},
    l = { "<cmd>SessionLoad<cr>", "load session"},
  }
}, {prefix = "<leader>"})

wk.register({
  m = {
    name = "help menus",
    k = { "<cmd>lua keymaps.show_keymaps()<cr>", "show keymaps"},
    c = { "<cmd>lua colorschemes.show_menu()<cr>", "change colorscheme"},
    h = { "<cmd>Telescope help_tags<cr>", "show help tags"},
  }
}, {prefix = "<leader>"})

wk.register({
  [","]  = { "previous buffer"},
  ["."] = { "next buffer" },
  ["c"] = { "close buffer" },
  ["p"] = { "pick buffer" },
  ["t"] = { "toggle file tree" },
  ["z"] = { "toggle zen mode" },
  ["e"] = { "enable github copilot" },
  ["d"] = { "disable github copilot" },
}, {prefix = "<leader>"})

wk.register({
  ["0"] = { "which_key_ignore" },
  ["1"] = { "which_key_ignore" },
  ["2"] = { "which_key_ignore" },
  ["3"] = { "which_key_ignore" },
  ["4"] = { "which_key_ignore" },
  ["5"] = { "which_key_ignore" },
  ["6"] = { "which_key_ignore" },
  ["7"] = { "which_key_ignore" },
  ["8"] = { "which_key_ignore" },
  ["9"] = { "which_key_ignore" },
  ["q"] = { "which_key_ignore" },
}, {prefix = "<leader>"})
