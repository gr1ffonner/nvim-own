vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>i", ":write<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>]", "gt")
vim.keymap.set("n", "<Leader>[", "gT")
vim.keymap.set('n', '<leader>e', ':Neotree left reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree close<CR>')
