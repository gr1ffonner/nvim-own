local M = {}

M.on_attach = function(client, bufnr)
	local function map(mode, keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end
		vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
	end

	-- LSP Keymaps
	map("n", "gd", require("telescope.builtin").lsp_definitions, "Goto definition")
	map("n", "gr", require("telescope.builtin").lsp_references, "Goto references")
	map("n", "gI", require("telescope.builtin").lsp_implementations, "Goto implementation")
	map("n", "<leader>D", require("telescope.builtin").lsp_type_definitions, "Type definition")
	map("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, "Document symbols")
	map("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace symbols")
	map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
	map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
	map("n", "K", vim.lsp.buf.hover, "Hover Documentation")
	map("n", "gD", vim.lsp.buf.declaration, "Goto declaration")

	-- Highlight references if supported
	if client.server_capabilities.documentHighlightProvider then
		local highlight_augroup = vim.api.nvim_create_augroup("LSPHighlight", { clear = true })
		vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
			buffer = bufnr,
			group = highlight_augroup,
			callback = vim.lsp.buf.document_highlight,
		})
		vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
			buffer = bufnr,
			group = highlight_augroup,
			callback = vim.lsp.buf.clear_references,
		})
	end

	-- Toggle inlay hints if supported
	if client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
		map("n", "<leader>th", function()
			vim.lsp.inlay_hint(bufnr, nil) -- Toggle inlay hints for the current buffer
		end, "Toggle Inlay Hints")
	end
end

return M
