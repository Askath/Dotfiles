return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            on_highlights = function(hightlights, colors)
                hightlights.LspInlayHint = { bg = nil, fg = colors.base01 }
            end,
        },
    },
    {

        "LazyVim/LazyVim",
        opts = {
            colorscheme = "solarized-osaka",
        },
    },
}
