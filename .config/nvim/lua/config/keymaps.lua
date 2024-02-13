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
vim.keymap.set("n", "<leader>D", ":DBUIToggle<cr>")
vim.keymap.set("n", "<leader>Md", ":delm QWFP <bar> :wshada!<cr>")
vim.keymap.set("n", "<leader>C", "<cmd>ChatGPT<cr>")

vim.keymap.set("n", "<leader>to", "<cmd>TabnineChat<cr>")
vim.keymap.set("n", "<leader>tc", "<cmd>TabnineChatClose<cr>")
vim.keymap.set("n", "<leader>te", "<cmd>TabnineExplain<cr>")
vim.keymap.set("n", "<leader>tf", "<cmd>TabnineFix<cr>")
vim.keymap.set("n", "<leader>tt", "<cmd>TabnineTest<cr>")

vim.keymap.set(
    "n",
    "<leader>tq",
    "",
    { noremap = true, callback = require("tabnine.chat").explain }
)

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>ha", function()
    harpoon:list():append()
end)
vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-q>", function()
    harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-w>", function()
    harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-f>", function()
    harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-p>", function()
    harpoon:list():select(4)
end)
