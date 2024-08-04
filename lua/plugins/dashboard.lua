return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#98BF83" }) -- Change the color code as per your preference

		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣋⣉⡙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠮⡞⠁⠀⠈⢢⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⠀⢠⢤⣇⠀⡇⠀⠀⠀⢸⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⠀⡏⢰⠙⠚⢧⣀⢀⣠⠞⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⡸⠀⡎⠀⣀⡤⠏⠉⠧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⢠⠃⢰⡵⠊⠁⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⢸⡀⠀⣀⡠⡆⠀⠀⠀⠀⠀⣆⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⡇⠀⠀⠀⠀⠀⡏⢣⡀⠘⣄⠀⠀⠀⠀⠀⠀⠀⠀ ",
					"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⢸⠀⠙⢤⡈⢦⡀⠀⠀⠀⠀⠀⠀ ",
					" ⠀⠀⢠⠖⣒⣶⠖⠒⠒⠒⠲⠷⣒⠒⠒⠒⠒⣺⣶⠖⠒⠓⢤⣹⠶⣒⠲⡄⠀⠀ ",
					" ⠀⢠⠏⣞⣟⠉⠀⣖⠒⣲⠀⠀⠈⣳⠀⠀⡎⡞⠉⠀⣖⢒⣢⠀⠀⠈⡇⠹⡄⠀ ",
					"  ⢠⠏⠀⠘⠪⢅⣀⣀⠉⣀⣀⡠⠔⠁⠀⠀⠙⠮⣇⣀⣀⠉⣀⣀⡤⠖⠁⠀⠹⡄ ",
					" ⡟⠒⠒⠒⠒⠒⠒⠓⠛⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠛⠛⠒⠒⠒⠒⠒⠒⢻ ",
					" ⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸",
					"",
					"",
					header_hl = "DashboardHeader",
				},
				center = {
					{
						icon = "󰊳 ",
						icon_hl = "DiagnosticHint",
						desc = " Lazy update ",
						desc_hl = "DiagnosticHint",
						key = "u",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Lazy update",
					},
					{
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " Find File ",
						desc_hl = "DiagnosticHint",
						key = "f",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Telescope find_files",
					},
					{
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " Find word ",
						desc_hl = "DiagnosticHint",
						key = "w",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Telescope live_grep",
					},
					{
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " Find all files ",
						desc_hl = "DiagnosticHint",
						key = "a",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = ":lua require('telescope.builtin').find_files({ hidden = true })",
					},
					{
						icon = "󰺅 ",
						icon_hl = "DiagnosticHint",
						desc = " Search session ",
						desc_hl = "DiagnosticHint",
						key = "s",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Autosession search",
					},
					{
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " LazyGit ",
						desc_hl = "DiagnosticHint",
						key = "l",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "LazyGit",
					},
				},
				footer = {},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
