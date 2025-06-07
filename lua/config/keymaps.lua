-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "<M-p>", [["_dP]], { desc = "Lossless Paste" })
vim.keymap.set("v", "<M-d>", [["_d]], { desc = "Yankless Delete" })

vim.keymap.set("n", "<M-w>", "<cmd>wincmd W<cr>", { desc = "Switch Window Focus" })

vim.keymap.set("n", "<leader>L", "<cmd>LazyExtra<cr>", { desc = "Lazy Extra" })
