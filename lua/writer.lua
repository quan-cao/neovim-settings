-- variables
local vim = vim
local b = vim.b

-- wrap
b['pencil#textwidth'] = 80

-- zen
require 'true-zen'.setup{
	ui = {
		bottom = {
			laststatus = 0,
			ruler = false,
			showmode = true,
			showcmd = false,
			cmdheight = 1,
		},
		top = {
			showtabline = 0,
		},
		left = {
			number = false,
			relativenumber = false,
			signcolumn = "no",
		},
	},
	modes = {
		ataraxis = {
			--left_padding = 32,
			--right_padding = 32,
			top_padding = 1,
			bottom_padding = 1,
			ideal_writing_area_width = {80},
			auto_padding = true,
			keep_default_fold_fillchars = true,
			custom_bg = {"none", ""},
			bg_configuration = true,
			quit = "untoggle",
			ignore_floating_windows = true,
			affected_higroups = {
				NonText = true,
				FoldColumn = true,
				ColorColumn = true,
				VertSplit = true,
				StatusLine = true,
				StatusLineNC = true,
				SignColumn = true,
			},
		},
		focus = {
			margin_of_error = 5,
			focus_method = "experimental"
		},
	},
	integrations = {
		limelight = true,
		lualine = true,
	},
	misc = {
		on_off_commands = false,
		ui_elements_commands = false,
		cursor_by_mode = false,
	}
}

-- limelight
b.limelight_conceal_ctermfg = 'gray'
b.limelight_conceal_guifg = 'DarkGray'
b.limelight_default_coefficient = 0.7
b.limelight_paragraph_span = 1
b.limelight_priority = -1

-- function
local M = {}
M.run = function()
  vim.cmd [[ :TZAtaraxis ]]
  vim.cmd [[ Limelight ]]
  vim.cmd [[
    Pencil
    SoftPencil
  ]]
end

return M
