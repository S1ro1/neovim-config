require('toggleterm').setup {

  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers

  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  direction = 'float',
  close_on_exit = true, 
  shell = starship, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    border = 'single' 
  }
}
