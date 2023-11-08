return {

  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      angularls = {
        file_types = { "typescript", "typescriptreact", "html", "typescript.tsx" },
        root_dir = require("lspconfig.util").root_pattern("angular.json", "project.json"),
      },
      elixirls = {
        dialyzerEnabled = true,
        autoBuild = true,
        cmd = { "elixir-ls" },
        filetypes = { "elixir", "eelixir", "exs", "ex" },
        root_dir = require("lspconfig.util").root_pattern("mix.exs", ".git"),
      },
      gdscript = {
        filetypes = { "gd", "gdscript", "gdscript3" },
        root_dir = require("lspconfig.util").root_pattern("project.godot", ".git"),
        tailwindcss = {
          file_types = { "heex" },
        },
      },
    },
  },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = {
          enable = true, -- defaults to false
        },
        credo = {
          enable = true, -- defaults to true
        },
        elixirls = {
          -- specify a repository and branch
          -- repo = "mhanberg/elixir-ls", -- defaults to elixir-lsp/elixir-ls

          -- default settings, use the `settings` function to override settings
          settings = elixirls.settings({
            dialyzerEnabled = true,
            fetchDeps = false,
            enableTestLenses = false,
            suggestSpecs = false,
          }),
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
