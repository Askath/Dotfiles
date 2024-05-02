return {
  {
    lazy = false,
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {
        keymap = {
            fzf = {
                ["ctrl-q"] = "select-all+accept",
            },
    },
      }
    end,

  keys = {
    {
      '<leader>fF',
      '<cmd>FzfLua git_files<cr>',
      desc = 'Find Git file',
    },

    {
      '<leader>ff',
      '<cmd>FzfLua files<cr>',
      desc = 'Find all files',
    },
    {
      '<leader><leader>',
      '<cmd>FzfLua buffers<cr>',
      desc = 'Find buffers',
    },
    {
      '<leader>r',
      '<cmd>FzfLua oldfiles<cr>',
      desc = 'Find recent files',
    },
    {
      '<leader>/',
      '<cmd>FzfLua grep<cr>',
      desc = 'Grep',
    },
    {
      '<leader>sw',
      '<cmd>FzfLua grep_cword<cr>',
      desc = 'Grep under cursor',
    },
    {
      '<leader>sh',
      '<cmd>FzfLua helptags<cr>',
      desc = 'Search Help',
    },
    {
      '<leader>sk',
      '<cmd>FzfLua keymaps<cr>',
      desc = 'Search Keymaps',
    },
    {
      '<leader>sm',
      '<cmd>FzfLua marks<cr>',
      desc = 'Search marks',
    },
  },
  },
}
