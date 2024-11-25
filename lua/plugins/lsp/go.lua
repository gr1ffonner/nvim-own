return {
	settings = {
		gopls = {
			gofumpt = true,
			codelenses = {
				gc_details = false,
				generate = true,
				test = true,
				tidy = true,
			},
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				constantValues = true,
				functionTypeParameters = true,
			},
			analyses = {
				fieldalignment = true,
				nilness = true,
				unusedparams = true,
			},
			usePlaceholders = true,
			completeUnimported = true,
			staticcheck = true,
		},
	},
	on_attach = function(client, bufnr)
		-- Automatically organize imports and format on save
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				local params = vim.lsp.util.make_range_params()
				params.context = { only = { "source.organizeImports" } }
				local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
				for _, res in pairs(result or {}) do
					for _, r in pairs(res.result or {}) do
						if r.edit then
							vim.lsp.util.apply_workspace_edit(r.edit, client.offset_encoding)
						end
					end
				end
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
}
