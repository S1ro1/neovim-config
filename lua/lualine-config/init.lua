local cp = require("catppuccin.palettes").get_palette() 
local custom_catppuccin = require "lualine.themes.catppuccin"

custom_catppuccin.normal.b.bg = cp.surface0
custom_catppuccin.normal.c.bg = cp.base
custom_catppuccin.insert.b.bg = cp.surface0
custom_catppuccin.command.b.bg = cp.surface0
custom_catppuccin.visual.b.bg = cp.surface0
custom_catppuccin.replace.b.bg = cp.surface0
custom_catppuccin.inactive.a.bg = cp.base
custom_catppuccin.inactive.b.bg = cp.base
custom_catppuccin.inactive.b.fg = cp.surface0
custom_catppuccin.inactive.c.bg = cp.base

require 'lualine'.setup {
  options = {
    theme = custom_catppuccin,
    component_separators = "|",
    section_separators = { left = "", right = "" },
  },
  tabline = {
    lualine_a = {
      {
        "buffers",
        separator = { left = "", right = "" },
        right_padding = 2,
        symbols = { alternate_file = "" },
      },
    },
  },
}
