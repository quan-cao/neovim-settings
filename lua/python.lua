-- variables
local vim = vim
local o = vim.o
local b = vim.b

local M = {}

-- function
M.run = function()
  -- tab, indent
  o.tabstop = 4
  o.softtabstop = 4
  o.shiftwidth = 4

  vim.cmd [[ NoPencil ]]
  vim.cmd [[ Limelight! ]]

  -- colorscheme
  require 'nord'.set()
end

return M
