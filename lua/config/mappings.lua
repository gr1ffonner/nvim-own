-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>i", ":write<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>]", "gt")
vim.keymap.set("n", "<Leader>[", "gT")

-- Nvim tree
vim.keymap.set("n", "<leader>o", ":NvimTreeToggle <CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Buffers
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Close buffer" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
