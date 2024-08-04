return {
	"nvim-tree/nvim-tree.lua",
	opts = {
		on_attach = "on_attach_change",
		filters = {
			enable = true,
			git_ignored = false,
			dotfiles = false,
			git_clean = false,
			no_buffer = false,
			no_bookmark = false,
			custom = {},
			exclude = {},
		},
		diagnostics = {
			enable = false,
			show_on_dirs = false,
			show_on_open_dirs = true,
			debounce_delay = 50,
			severity = {
				min = vim.diagnostic.severity.HINT,
				max = vim.diagnostic.severity.ERROR,
			},
			icons = {
				hint = "",
				info = "",
				warning = "",
				error = "",
			},
		},
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
