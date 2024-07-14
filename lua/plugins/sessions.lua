return {
	{
		"rmagatti/auto-session",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("auto-session").setup({
				auto_session_suppress_dirs = { "~/", "~/code" },
				auto_save_enabled = true,
				auto_restore_enabled = true,
				auto_restore_lazy_delay_enabled = false,
			})
		end,
	},
}
