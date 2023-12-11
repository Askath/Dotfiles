return {
    { "catppuccin/nvim", as = "catppuccin" },
    { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
    {
        "rktjmp/lush.nvim",
    },
    { "mcchrish/zenbones.nvim" }, -- lazy,
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
}
