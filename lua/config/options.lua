local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.swapfile = false

opt.clipboard = "unnamedplus"

opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.iskeyword:remove("_")
g.nobackground = 1

-- Dont comment when enter on a new line from line with comment
vim.cmd([[autocmd BufEnter * set fo-=c fo-=r fo-=o]])
