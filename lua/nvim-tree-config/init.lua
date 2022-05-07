require'nvim-tree'.setup {
  diagnostics = {
    enable = true,
  },
  view = {
    width = 22,
    hide_root_folder = true,
    side = 'left', 
  },
  disable_netrw = true,
  hijack_netrw = true,
  actions = {
    open_file = {
      resize_window = true,
    },
  },
}

vim.api.nvim_exec([[ autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif ]], false)
