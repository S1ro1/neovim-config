function lines_from(file)
  local lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

local keymaps_file = os.getenv('HOME') .. '/.config/nvim/lua/key-maps/init.lua'

---------------------------------------------

local keymaps = {}

keymaps.spawned_keymaps = false
keymaps.spawned_menu = false

keymaps.Popup = require("nui.popup")
keymaps.event = require("nui.utils.autocmd").event

keymaps.key_popup = keymaps.Popup({
	enter = true,
	focusable = true,
	border = {
		style = "rounded",
    padding = {
      bottom = 1,
    },
    text = {
      top = "[Keybinds]",
      top_align = "center",
      bottom = "[Press-q-to-close]",
      bottom_align = "left"
    }
	},
	position = "50%",
	size = {
		width = "70%",
		height = "50%",
	},
	buf_options = {
		filetype = "lua",
    modifiable = false,
	}, 
})
local keymaps_lines = lines_from(keymaps_file)

-- mount and print to buffer
function keymaps.show_keymaps()
  if keymaps.spawned_keymaps == true then
    keymaps.key_popup:show()
  else
    vim.api.nvim_buf_set_lines(keymaps.key_popup.bufnr, 0, -1, false, keymaps_lines)
    keymaps.key_popup:mount()
    keymaps.spawned_keymaps = true
  end
end

keymaps.hide_keymaps = keymaps.key_popup:map("n", "q", function(bufnr)
  keymaps.key_popup:hide()
end, { noremap = true })

return keymaps 

