-- variables
local vim = vim
local bo = vim.bo
local wo = vim.wo

local M = {}

-- function
M.run = function()
  -- tab, indent
  bo.tabstop = 4
  bo.softtabstop = 4
  bo.shiftwidth = 4

  vim.cmd [[ NoPencil ]]
  vim.cmd [[ Limelight! ]]

  -- colorscheme
  require 'nord'.set()
end

return M
