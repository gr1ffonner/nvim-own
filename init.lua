-- Base
require("config.options")
require("config.mappings")
require("config.lazy")

-- Plugins
require("plugins.autoformat")
require("plugins.bufferline")
require("plugins.comment")
require("plugins.copilot")
require("plugins.dashboard")
require("plugins.guess-indent")
require("plugins.indent")
require("plugins.lualine")
require("plugins.mason")
require("plugins.nvim-tree")
require("plugins.nvim-web-devicons")
require("plugins.plugins")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
require("plugins.whichkey")

-- Startuptime
vim.g.start_time = vim.loop.hrtime()
