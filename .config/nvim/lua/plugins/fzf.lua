return {
    { "junegunn/fzf.vim" },
    { "junegunn/fzf" },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end,
        keys = {
            {
                "<leader><leader>",
                "<cmd>FzfLua git_files<cr>",
                desc = "Find files",
            },
            {
                "<leader>f",
                "<cmd>FzfLua files<cr>",
                desc = "Find all files",
            },
            {
                "<leader>,",
                "<cmd>FzfLua buffers<cr>",
                desc = "Find buffers",
            },
            {
                "<leader>r",
                "<cmd>FzfLua oldfiles<cr>",
                desc = "Find recent files",
            },
            {
                "<leader>/",
                "<cmd>FzfLua grep<cr>",
                desc = "Grep",
            },
        },
    },
}
