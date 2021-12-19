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

  -- syntax highlight
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

  -- truezen
  use 'Pocco81/TrueZen.nvim'

  -- limeline
  use 'junegunn/limelight.vim'

  -- pencil
  use 'reedes/vim-pencil'

  -- tree
  use {'kyazdani42/nvim-tree.lua', requires={'kyazdani42/nvim-web-devicons'}}

  -- lualine
  use {'nvim-lualine/lualine.nvim', requires={'kyazdani42/nvim-web-devicons', opt=true}}

  -- autocomplete
  use 'github/copilot.vim' -- remember to run :Copilot setup afterwards
  use {'neoclide/coc.nvim', branch='release'}   -- coc needs nodejs

  -- auto pairs
  use 'windwp/nvim-autopairs'

  -- gitdiff
  use {'airblade/vim-gitgutter'}

  -- colorscheme
  use 'shaunsingh/nord.nvim'
  use 'EdenEast/nightfox.nvim'
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
