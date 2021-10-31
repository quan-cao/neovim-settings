-- variables
local vim = vim
local remap = vim.api.nvim_set_keymap

-- indent/unindent with tab/shift-tab
remap('n', '<Tab>', '>>', {})
remap('n', '<Tab>', '<<', {})
remap('i', '<S-Tab>', '<Esc><<i', {})
remap('v', '<Tab>', '>gv', {})
remap('v', '<S-Tab>', '<gv', {})

-- buffers
remap('n', '<leader>[', '<cmd> :bprevious<CR>', {}) -- previous buffer
remap('n', '<leader>]', '<cmd> :bnext<CR>', {})     -- next buffer
remap('n', '<leader>x', '<cmd> :bdelete<CR>', {})   -- close buffer

-- tree
remap('n', '<leader>n', '<cmd> :NvimTreeToggle<CR>', {})
remap('n', '<leader>r', '<cmd> :NvimTreeRefresh<CR>', {})

-- coc
remap('n', '<leader>rn', '<Plug>(coc-rename)', {})              -- rename
remap('n', 'gd', '<Plug>(coc-definition)', { silent=true })
remap('n', 'gy', '<Plug>(coc-type-definition)', { silent=true })
remap('n', 'gi', '<Plug>(coc-implementation)', { silent=true })
remap('n', 'gr', '<Plug>(coc-references)', { silent=true })
