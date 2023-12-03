-- Base
require("config.options")
require("config.mappings")
require("config.lazy")

-- Plug Walk
require("plugins.plugins")
require("mason").setup()
