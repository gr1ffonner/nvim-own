local M = {}

function M.setup()
    -- Mason setup
    require("mason").setup()

    -- Mason-LSPConfig setup
    require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "lua_ls", "pyright" },
    })
end

return M
