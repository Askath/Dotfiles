return {
    {
        "rktjmp/lush.nvim",
    },
    { "mcchrish/zenbones.nvim" }, -- lazy,

    {
        "water-sucks/darkrose.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "jesseleite/nvim-noirbuddy",
        dependencies = {
            { "tjdevries/colorbuddy.nvim", branch = "dev" },
        },
        lazy = false,
        priority = 1000,
        opts = {
            -- All of your `setup(opts)` will go here
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "noirbuddy",
        },
    },
}
