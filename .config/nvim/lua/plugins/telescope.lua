return {
    {
        "nvim-telescope/telescope.nvim",
        opts = {
            defaults = {
                path_display = { "truncate" },
                wrap_results = true,
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
                mappings = {
                    n = {},
                },
            },
        },
    },
}
