local wk = require('which-key')

-- telescope keybinds
wk.register({
  f = {
    name = "telescope",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep"},
    b = { "<cmd>Telescope buffers<cr>", "Buffer overview"},
    h = { "<cmd>Telescope help_tags<cr>", "Help tags"},
  } 
})

require'which-key'.setup({

})
