-- Base
require("config.options")
require("config.mappings")
require("config.lazy")

-- TODO global refactoring
vim.opt.termguicolors = true

require("bufferline").setup({})

require("Comment").setup({
	-- Add a space b/w comment and the line
	padding = true,
	-- Whether the cursor should stay at its position
	sticky = true,
	-- LHS of toggle mappings in NORMAL mode
	toggler = {
		-- Line-comment toggle keymap
		line = "<leader>/",
	},
	-- LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		-- Line-comment keymap
		line = "<leader>/",
		-- Block-comment keymap
		block = "<leader>/",
	},
	-- Enable keybindings
	-- NOTE: If given `false` then the plugin won't create any mappings
	mappings = {
		-- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
		basic = true,
		-- Extra mapping; `gco`, `gcO`, `gcA`
		extra = true,
	},
})

require("guess-indent").setup({
	auto_cmd = true, -- Set to false to disable automatic execution
	override_editorconfig = false, -- Set to true to override settings set by .editorconfig
	filetype_exclude = { -- A list of filetypes for which the auto command gets disabled
		"netrw",
		"tutor",
	},
	buftype_exclude = { -- A list of buffer types for which the auto command gets disabled
		"help",
		"nofile",
		"terminal",
		"prompt",
	},
})

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

-- Plug Walk
require("plugins.plugins")
require("mason").setup()
