return {
    { "catppuccin/nvim", as = "catppuccin" },

    { "nyoom-engineering/oxocarbon.nvim" },
    { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
    {
        "rktjmp/lush.nvim",
    },
    { "mcchrish/zenbones.nvim" }, -- lazy,
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "midnight",
        },
    },
}
