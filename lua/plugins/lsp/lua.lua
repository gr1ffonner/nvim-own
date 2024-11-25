return {
	settings = {
		lua_ls = {
			completion = {
				callSnippet = "Replace",
			},
			diagnostics = {
				disable = { "missing-fields" },
				globals = { "vim" }, -- Prevent "vim" undefined errors
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
}
