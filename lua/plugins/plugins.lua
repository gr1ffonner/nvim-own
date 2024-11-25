return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
			})
			vim.cmd("colorscheme gruvbox")
		end,
	},
	-- Autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"p00f/nvim-ts-rainbow",
	},
	-- 	config = function()
	-- 		vim.api.nvim_create_autocmd("BufWritePre", {
	-- 			pattern = "*.go",
	-- 			callback = function()
	-- 				local params = vim.lsp.util.make_range_params()
	-- 				params.context = { only = { "source.organizeImports" } }
	-- 				local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
	-- 				for cid, res in pairs(result or {}) do
	-- 					for _, r in pairs(res.result or {}) do
	-- 						if r.edit then
	-- 							local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
	-- 							vim.lsp.util.apply_workspace_edit(r.edit, enc)
	-- 						end
	-- 					end
	-- 				end
	-- 				vim.lsp.buf.format({ async = false })
	-- 			end,
	-- 		})
	--
	-- 			end,
	-- 		})
	-- 		local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- 		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
	-- 		local servers = {
	-- 				},
	-- 			},
	-- 			pyright = {},
	-- 		}
	--
	-- 		require("mason").setup()
	--
	-- 		local ensure_installed = vim.tbl_keys(servers or {})
	-- 		vim.list_extend(ensure_installed, {
	-- 			"stylua",
	-- 			"gopls",
	-- 			"gofumpt",
	-- 			"pyright",
	-- 			"black",
	-- 		})
	-- 		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
	--
	-- 		require("mason-lspconfig").setup({
	-- 			handlers = {
	-- 				function(server_name)
	-- 					local server = servers[server_name] or {}
	-- 					-- This handles overriding only values explicitly passed
	-- 					-- by the server configuration above. Useful when disabling
	-- 					-- certain features of an LSP (for example, turning off formatting for tsserver)
	-- 					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
	-- 					require("lspconfig")[server_name].setup(server)
	-- 				end,
	-- 			},
	-- 		})
	-- 	end,
	-- },
}
