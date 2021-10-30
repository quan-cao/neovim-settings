lua require('plugins')  -- Load plugins
lua require('keys')     -- Load keybindings
lua require('default')  -- Load default config

command Python lua require('python').run()<CR>
command Writer lua require('writer').run()<CR>
