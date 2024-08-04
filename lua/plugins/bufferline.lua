return {
	"akinsho/bufferline.nvim",
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "thin",
				offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
				diagnostics = "nvim_lsp",
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
}
