return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      -- current_line_blame = true
    },
    config = function()
      local gs = require('gitsigns')
      -- git actions
      vim.keymap.set('n', ']c', gs.next_hunk, { desc = 'Next hunk of changes' })
      vim.keymap.set('n', '[c', gs.prev_hunk, { desc = 'Next hunk of changes' })
      vim.keymap.set('n', '<leader>hr', gs.reset_hunk, { desc = 'Reset current hunk' })
      vim.keymap.set('n', '<leader>hp', gs.preview_hunk_inline, { desc = 'Preview current changes' })
      -- vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview current changes' })
      vim.keymap.set('n', '<leader>hd', gs.diffthis, { desc = 'Show diff' })

      vim.keymap.set('n', '<leader>hD', function()
        gs.diffthis('~')
      end)
    end
  }
}
