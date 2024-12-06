local M = {}


local keymaps = require("plugins.lsp.keymaps") -- Ensure this file returns an `on_attach` function
local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Server configurations
local servers = {
    gopls = require("plugins.lsp.langs.go"),
    lua_ls = require("plugins.lsp.langs.lua"),
    pyright = require("plugins.lsp.langs.python"),
}

function M.setup()
    for server, config in pairs(servers) do
        lspconfig[server].setup(vim.tbl_extend("force", {
            on_attach = keymaps.on_attach,
            capabilities = capabilities,
        }, config))
    end
end

return M
