function lines_from(file)
  local lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

local keymaps_file = os.getenv('HOME') .. '/.config/nvim/lua/key-maps/init.lua'
local keymaps = lines_from(keymaps_file)

---------------------------------------------

local utils = {}

utils.spawned_keymaps = false

utils.Popup = require("nui.popup")
utils.event = require("nui.utils.autocmd").event

utils.key_popup = utils.Popup({
	enter = true,
	focusable = true,
	border = {
		style = "rounded",
    text = {
      bottom = "Press q to close",
      bottom_align = "left",
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



-- mount and print to buffer
function utils.show_keymaps()
  if utils.spawned_keymaps == true then
    utils.key_popup:show()
  else
    for k, v in pairs(keymaps) do
      vim.api.nvim_buf_set_lines(utils.key_popup.bufnr, k - 1, k, false, { v })
    end
    utils.key_popup:mount()
    utils.spawned_keymaps = true
  end
end

-- close buffer on q press
utils.hide = utils.key_popup:map("n", "q", function(bufnr)
  utils.key_popup:hide()
end, { noremap = true })

return utils
