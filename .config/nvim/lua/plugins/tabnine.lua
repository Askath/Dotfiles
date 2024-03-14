-- Use your favorite package manager to install, for example in lazy.nvim
--  Optionally, you can also install nvim-telescope/telescope.nvim to use some search functionality.
return {
    {
        "sourcegraph/sg.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]]
        },

        -- If you have a recent version of lazy.nvim, you don't need to add this!
        build = "nvim -l build/init.lua",
        config = function()
            require("sg").setup()
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            table.insert(opts.sources, { name = "cody" })
        end,
    },
} -- {
--     "codota/tabnine-nvim",
--     build = "./dl_binaries.sh",
--     config = function()
--         require("tabnine").setup({
--             disable_auto_comment = true,
--             accept_keymap = "<M-l>",
--             dismiss_keymap = "<C-]>",
--             debounce_ms = 800,
--             suggestion_color = { gui = "#808080", cterm = 244 },
--             exclude_filetypes = { "TelescopePrompt", "NvimTree" },
--     end,
--         })
-- },
--
