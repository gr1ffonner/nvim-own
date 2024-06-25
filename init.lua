-- Base
require("config.options")
require("config.mappings")
require("config.lazy")

vim.opt.termguicolors = true
require("bufferline").setup{}
require('Comment').setup({
    ignore = '^$',
    toggler = {
	line = '<leader>/',
    },
})
-- Plug Walk
require("plugins.plugins")
require("mason").setup()
