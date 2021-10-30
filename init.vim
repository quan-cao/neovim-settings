lua require('plugins')
lua require('default')
lua require('python')
lua require('writer')

command Python lua require('python').run()<CR>
command Writer lua require('writer').run()<CR>
