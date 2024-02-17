return {
    {
        "tpope/vim-fugitive",
        config = {
            syntaxfoldmethod = syntax,
        },

        keys = {
            {
                "<leader>gs",
                "<cmd>Git<cr>",
                desc = "Git status",
            },
        },
    },
}
