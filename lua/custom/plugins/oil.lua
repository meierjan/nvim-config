return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ['<C-h>'] = false, -- Disable Ctrl-h
        ['<C-l>'] = false, -- Disable Ctrl-l
      },
    },
    event = { 'VimEnter */*,.*', 'BufNew */*,.*' },
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    keys = {
      { '-', '<cmd>Oil<cr>', desc = 'Oil' },
    },
  },
}
