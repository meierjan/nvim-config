-- This is a nvim plugin that allows to easily jump between files
return {
  {
    'ThePrimeagen/harpoon',
    opts = {},
    config = function()
      require('telescope').load_extension 'harpoon'

      local harpoon = {}
      harpoon.mark = require 'harpoon.mark'
      harpoon.ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>ha', harpoon.mark.add_file, { desc = '[H]arpoon, [A]dd a file' })
      vim.keymap.set('n', '<leader>hm', harpoon.ui.toggle_quick_menu, { desc = '[H]arpoon, show [M]enu' })

      vim.keymap.set('n', '<leader>sm', '<CMD>Telescope harpoon marks<CR>', { desc = '[S]earch Harpoon [M]arks)' })

      -- add navigation actions
      vim.keymap.set('n', '<leader>h1', function()
        harpoon.ui.nav_file(1)
      end, { desc = 'Jump to harpoon mark [1]' })

      vim.keymap.set('n', '<leader>h2', function()
        harpoon.ui.nav_file(2)
      end, { desc = 'Nav to [H]arpoon mark [2]' })

      vim.keymap.set('n', '<leader>h3', function()
        harpoon.ui.nav_file(3)
      end, { desc = 'Nav to [H]arpoon mark [3]' })

      vim.keymap.set('n', '<leader>h4', function()
        harpoon.ui.nav_file(4)
      end, { desc = 'Nav to [H]arpoon mark [4]' })

      vim.keymap.set('n', '<leader>h5', function()
        harpoon.ui.nav_file(5)
      end, { desc = 'Nav to [H]arpoon mark [5]' })
    end,
  },
}
