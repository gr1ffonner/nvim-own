-- General
vim.g.mapleader = " "

-- Nvim tree
vim.keymap.set("n", "<leader>o", ":NvimTreeToggle <CR>", { desc = "File Explorer" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })

-- Editor
vim.keymap.set("n", "<C-c>", ":%y+<CR>", { desc = "Copy all file" })

-- Buffers
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>X", ":1,$bd! <CR>", { desc = "Close all buffers" })
vim.keymap.set("n", "<Leader>I", ":wa!<CR>", { noremap = true, silent = true, desc = "Save all buffers" })
vim.keymap.set("n", "<Leader>i", ":w<CR>", { noremap = true, silent = true, desc = "Save buffer" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word in files" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
