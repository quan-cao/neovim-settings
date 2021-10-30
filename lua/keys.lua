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
remap('n', '<leader>[', '<cmd> :bprevious<CR>', {})
remap('n', '<leader>]', '<cmd> :bnext<CR>', {})
remap('n', '<leader>x', '<cmd> :bnext<CR>', {})

-- tree
remap('n', '<leader>n', '<cmd> :NvimTreeToggle<CR>', {})
remap('n', '<leader>r', '<cmd> :NvimTreeRefresh<CR>', {})
