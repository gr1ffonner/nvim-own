return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#af87d7" }) -- Change the color code as per your preference

		local end_time = vim.loop.hrtime()
		local startup_time_ms = (end_time - vim.g.start_time) / 1e6
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
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " Find File ",
						desc_hl = "DiagnosticHint",
						key = "ff",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Telescope find_files",
					},
					{
						icon = " ",
						icon_hl = "DiagnosticHint",
						desc = " Find word ",
						desc_hl = "DiagnosticHint",
						key = "fw",
						key_hl = "DiagnosticHint",
						key_format = " [%s]",
						action = "Telescope live_grep",
					},
				},
				footer = {
					"",
					"",
					"Startuptime: " .. startup_time_ms .. " ms",
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
