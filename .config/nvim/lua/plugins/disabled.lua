-- Built in Plugins that are disabled
return {
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },
    {
        "kdheepak/lazygit.nvim",
        keys = function()
            return {}
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        enabled = true,
    },
    { "nvim-pack/nvim-spectre", enabled = false },
    {
        "nvim-telescope/telescope.nvim",
        enabled = true,
        keys = function()
            return {}
        end,
    },
    {
        "mfussenegger/nvim-lint",
        optional = true,
        opts = {
            linters_by_ft = {
                markdown = {},
            },
        },
    },
    {
        "echasnovski/mini.pairs",
        enabled = false,
    },
    { "hrsh7th/cmp-nvim-lsp", enabled = false },
    { "hrsh7th/cmp-buffer", enabled = false },
}
