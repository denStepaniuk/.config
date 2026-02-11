return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
      -- This will show files ignored by git as well
      is_ignored_by_git = false,
    }
  },

  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function(_, opts)
    require('oil').setup(opts)
    vim.keymap.set('n', '<leader>ee', '<cmd>:Oil<CR>', { desc = "Open explorer" })
  end
}
