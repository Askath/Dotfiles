return { -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      { 'j-hui/fidget.nvim', opts = {} },

      { 'folke/neodev.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end
          map('gd', "<CMD>lua require('fzf-lua').lsp_definitions({ jump_to_single_result = true })<cr>", 'Jump to Definiton')
          map('gr', '<CMD>FzfLua lsp_references<cr>', 'Jump to Definiton')
          map('cs', '<CMD>FzfLua lsp_document_symbols<cr>', 'Show Symbols')
          map('cR',function() 
            vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}}) 
          end , 'organize Imports')
          map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')


          map('K', vim.lsp.buf.hover, 'Hover Documentation')
          vim.lsp.inlay_hint.enable(bufnr, true)

          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.clear_references,
            })
          end
        end,
      })

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local servers = {

        prettier = {
          cli_options = {
            arrow_parens = "always",
            bracket_spacing = true,
            bracket_same_line = false,
            embedded_language_formatting = "auto",
            end_of_line = "lf",
            html_whitespace_sensitivity = "css",
            -- jsx_bracket_same_line = false,
            jsx_single_quote = false,
            print_width = 150,
            prose_wrap = "preserve",
            quote_props = "as-needed",
            semi = true,
            single_attribute_per_line = false,
            single_quote = false,
            tab_width = 2,
            trailing_comma = "es5",
            use_tabs = false,
            vue_indent_script_and_style = false,
          },
        },
        tsserver = {
          autostart = true,
          init_options = {
            preferences = {
              includeInlayParameterNameHints = 'all',
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
              importModuleSpecifierPreference = 'non-relative',
            },
          },
        },
        eslint = {
          bin = 'eslint', -- or `eslint_d`
          code_actions = {
            enable = true,
            apply_on_save = {
              enable = true,
              types = { 'directive', 'problem', 'suggestion', 'layout' },
            },
            disable_rule_comment = {
              enable = true,
              location = 'separate_line', -- or `same_line`
            },
          },
          diagnostics = {
            enable = true,
            report_unused_disable_directives = false,
            run_on = 'type', -- or `save`
          },
        },
        angularls = {
          autostart = true,
          filetypes = {
            'html',
            'htm',
            'typescript',
          },
          root_dir = require('lspconfig.util').root_pattern('angular.json', 'project.json'),
        },

        lua_ls = {
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
            },
          },
        },
      }

      -- Ensure the servers and tools above are installed
      --  To check the current status of installed tools and/or manually install
      --  other tools, you can run
      --    :Mason
      --
      --  You can press `g?` for help in this menu.
      require('mason').setup()

      -- You can add other tools here that you want Mason to install
      -- for you, so that they are available from within Neovim.
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
