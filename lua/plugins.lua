local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- auto install & setup `packer.nvim`
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
	execute 'packadd packer.nvim'
end

vim.cmd [[ packadd packer.nvim ]]

local packer = require 'packer'

packer.init()

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- syntax hightlighting
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
  use {'stsewd/sphinx.nvim', run=':UpdateRemotePlugins'}

  -- truezen
  use 'Pocco81/TrueZen.nvim'

  -- limeline
  use 'junegunn/limelight.vim'

  -- pencil
  use 'reedes/vim-pencil'

  -- tree
  use 'kyazdani42/nvim-tree.lua'

  -- lualine
  use {'nvim-lualine/lualine.nvim', requires={'kyazdani42/nvim-web-devicons', opt=true}}

  -- autocomplete
  use 'github/copilot.vim' -- remember to run :Copilot setup afterwards
  use {'neoclide/coc.nvim', branch = 'release'}

  -- auto pairs
  use 'windwp/nvim-autopairs'

  -- colorscheme
  use 'shaunsingh/nord.nvim'
  use 'sainnhe/gruvbox-material'
  use 'dracula/vim'
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
