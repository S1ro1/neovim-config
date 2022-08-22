require('catppuccin').setup({
  dim_inactive = {
    enabled = true,
    shade = "dark",
    percentage = 0.15,
  },

  integrations = {
    which_key = true,
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        warnings = { "italic" },
        hints = { "italic" },
        information = { "italic" },
      }
    },
    dashboard = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    nvimtree = {
      enabled = true,
      show_root = true,
    }
  }
})

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
