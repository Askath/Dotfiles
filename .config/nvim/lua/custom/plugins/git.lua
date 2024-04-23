return {
    -- {
    --     "tpope/vim-fugitive",
    --     config = {
    --         syntaxfoldmethod = "syntax",
    --     },
    --
    -- },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed, not both.
            "ibhagwan/fzf-lua", -- optional
        },
        keys = {
            {
                "<leader>gs",
                "<cmd>Neogit<cr>",
                desc = "Git status",
            },
        },
        config = true,
        branch = "nightly",
    },
}
