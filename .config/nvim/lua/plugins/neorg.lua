return {
  {
    "nvim-neorg/neorg",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.completion"] = { config = {
            engine = "nvim-cmp",
          } },
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      })
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
  },
}
