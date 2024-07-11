return {
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup({
                options = {
                    -- Enable icons for buffers
                    diagnostics = "nvim_lsp",
                    -- Set icons from nvim-web-devicons
                    diagnostics_indicator = function(_, _, diagnostics_dict, _)
                        local s = " "
                        for e, n in pairs(diagnostics_dict) do
                            local sym = e == "error" and " " or (e == "warning" and " " or "")
                            s = s .. n .. sym
                        end
                        return s
                    end,
                },
            })
        end,
        requires = { "nvim-lua/plenary.nvim", opt = true },
    },
}