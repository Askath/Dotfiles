return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          root_dir = require("lspconfig.util").root_pattern("angular.json", "project.json"),
        },
        elixirls = {
          dialyzerEnabled = true,
          autoBuild = true,
          cmd = { "elixir-ls" },
          filetypes = { "elixir", "eelixir", "exs", "ex" },
          root_dir = require("lspconfig.util").root_pattern("mix.exs", ".git"),
        },
      },
    },
  },
}
