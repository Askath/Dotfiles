-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---- Delete keymaps for tabs and lazygit
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader><tab>l")

vim.keymap.del("n", "<leader><tab><tab>")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.del("n", "<leader><tab>d")
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader><tab>f")

vim.keymap.set("n", "<c-q>", ":q!<cr>")
