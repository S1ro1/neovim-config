utils = {}
utils.Menu = require('nui.menu')

local function prepare_schemes_table()
  local schemes = vim.api.nvim_exec('echo getcompletion("", "color")', true)
  return vim.split(schemes, ',')
end

function utils.show_menu()

  local schemes = prepare_schemes_table()

  local items = {}
  for k, v in pairs(schemes) do
    v = v:gsub("['%[%] ]", "")
    table.insert(items, utils.Menu.item(v))
  end

  utils.menu = utils.Menu({
    position = "50%",
    size = {
      width = "25%",
      height = "10%",
    },
    border = {
      style = "rounded",
      text = {
        top = "[Choose-a-colorscheme]",
        top_align = "center",
        bottom = "[Press-q-to-close]",
        bottom_align = "left"
      },
      padding = {
        bottom = 1,
      }
    },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    },
    buf_options = {
      modifiable = false,
    }
  }, {
    lines = items,
    max_width = 20,
    keymap = {
      focus_next = { "j", "<Down>", "<Tab>" },
      focus_prev = { "k", "<Up>", "<S-Tab>" },
      close = { "q", "<C-c>" },
      submit = { "<CR>", "<Space>" },
    },
    on_submit = function(item)
        vim.api.nvim_exec('colorscheme ' .. item.text, false)
    end,
  })

  utils.menu:mount()
end

return utils
