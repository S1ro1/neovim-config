require'nvim-tree'.setup {
  diagnostics = {
    enable = true,
  },
  view = {
    width = 22,
    hide_root_folder = true,
    side = 'left', 
    mappings = {
      custom_only = false,
    },
  },
  disable_netrw = true,
  hijack_netrw = true,
  actions = {
    open_file = {
      resize_window = true,
    },
  },
}

-- some old magic
vim.api.nvim_exec([[ autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif ]], false)
