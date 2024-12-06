local M = {}

local keymaps = require("plugins.lsp.keymaps")

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "gopls", "pyright" },
})

local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Extend capabilities (for completion plugins like nvim-cmp)
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Attach LSP servers with their respective configurations
local servers = {
	gopls = require("plugins.lsp.go"),
	-- pyright = require("plugins.lsp.python"),

	-- lua_ls = require("plugins.lsp.lua"),
}

for server, config in pairs(servers) do
	lspconfig[server].setup(vim.tbl_extend("force", {
		on_attach = keymaps.on_attach,
		capabilities = capabilities,
	}, config))
end

return M
