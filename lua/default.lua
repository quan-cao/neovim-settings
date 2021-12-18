-- variables
local vim = vim
local o = vim.o
local g = vim.g

-- syntax / treesitter
--require 'nvim-treesitter.configs'.setup {
 -- ensure_installed = "maintained",     -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  --highlight = {
   -- enable = true,              -- false will disable the whole extension
    ----additional_vim_regex_highlighting = true
  --}
--}
g.syntax = 'on'

-- no swap file
vim.cmd('set noswapfile')

-- split
g.splitbelow = true

-- updatetime
o.updatetime = 100

-- autopairs
require 'nvim-autopairs'.setup{}

-- virtual margin
o.scrolloff = 5

-- no bells
o.errorbells = false

-- undo
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true

-- tab, indent
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.smartindent = true

-- line number
o.number = true

-- colorscheme
o.termguicolors = true
o.background = 'dark'
require 'nightfox'.setup({
  fox = "nordfox", -- change the colorscheme to use nordfox
  styles = {
    comments = "italic", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
  },
  colors = {
    red = "#FF000", -- Override the red color for MAX POWER
    bg_alt = "#000000",
  },
  hlgroups = {
    TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
    LspCodeLens = { bg = "#000000", style = "italic" },
  }
})
require 'nightfox'.load()

-- lualine
require 'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_diagnostic', 'coc'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  },
  extensions = {}
}

-- nvim-tree
g.nvim_tree_highlight_opened_files = 1    -- highlight opened files
g.nvim_tree_git_hl = 1                    -- highlight git files
g.nvim_tree_quit_on_open = 1              -- close tree on open
require 'nvim-tree'.setup {
  filters = {
    dotfiles = true,
    custom = {
      '__pycache__'
    }
  }
}
