return {
    {
        "folke/zen-mode.nvim",
        opts = {
            window = {
                width = 120,
            },
        },
        lazy = false,

        keys = {
            {
                "<leader>Z",
                "<cmd>ZenMode<cr>",
                desc = "Zen mode",
            },
        },
    },
}
