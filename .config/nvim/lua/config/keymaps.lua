-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Delete keymaps for tabs and lazygit
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader><tab>l")
vim.keymap.del("n", "<leader><tab><tab>")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.del("n", "<leader><tab>d")
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader><tab>f")

-- Save File
vim.keymap.set("n", "<leader>W", "<cmd>w!<CR>", { desc = "Save" })

-- open fugitive
vim.keymap.set("n", "<leader>gf", "<cmd>Git<CR>", { desc = "Fugitiv" })

-- Fold for log viewing
vim.keymap.set(
    "n",
    "<leader>gF",
    "<cmd>set foldmethod=syntax<CR>zM",
    { desc = "Fold Diff" }
)

-- zen mode
vim.keymap.set("n", "<leader>wz", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })

-- Neogen
vim.keymap.set(
    "n",
    "<leader>cNf",
    "<cmd>Neogen func<CR>",
    { desc = "Generate Function Documentation" }
)

vim.keymap.set(
    "n",
    "<leader>cNc",
    "<cmd>Neogen class<CR>",
    { desc = "Generate Class Documentation" }
)

--harpoon
vim.keymap.set(
    "n",
    "<leader>hh",
    "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
    { desc = "Harpoon Menu" }
)

vim.keymap.set(
    "n",
    "<leader>ha",
    "<cmd>lua require('harpoon.mark').add_file()<CR>",
    { desc = "Harpoon Menu" }
)

vim.keymap.set(
    "n",
    "<leader>T",
    "<cmd>!t<CR>",
    { desc = "Tmux Session Manager " }
)
