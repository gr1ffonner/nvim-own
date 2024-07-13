return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 0
	end,
	opts = {
		layout = {
			align = 3,
			width = { max = 25 },
			spacing = 3,
		},
	},
}
