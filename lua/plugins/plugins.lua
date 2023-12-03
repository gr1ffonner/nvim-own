return {
	{
		-- TreeSitter
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({ ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python", "rust"
			},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
		end
	},
	-- Which key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
		}
	},
	-- Colors
	{ 
		"akinsho/horizon.nvim", 
		version = "*",
		-- optionally set the colorscheme within lazy config
		config = function()
			require('horizon').setup {
				disable_background = true,
			}
		end,
		init = function()
			vim.cmd("colorscheme horizon")
		end
	},
	-- Mason
	{
		"williamboman/mason.nvim"
	},
	-- File tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
}
