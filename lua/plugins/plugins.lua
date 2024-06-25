return {
	{
		-- TreeSitter
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({ ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "python", "rust", "go"
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
        "nvim-tree/nvim-tree.lua",
        opts = { on_attach = on_attach_change },
	dependencies = {
	      "nvim-tree/nvim-web-devicons",
	    },
	    },
	-- Buffers 
	{
		'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'
		
	},
	-- Comments
	{
	    'numToStr/Comment.nvim',
	    opts = {
		-- add any options here
	},
	-- Autopairs
	{
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	},
	-- Indent
	{
		'nmac427/guess-indent.nvim',
	},
	-- LSP
	{
		'neovim/nvim-lspconfig'
	},
	{
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
	    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
	},
}
}
