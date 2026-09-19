vim.g.fff = {
  lazy_sync = true,
  debug = { enabled = false, show_scores = true },
}

require('fff').setup({
  title = 'Seeker',
  layout = {
    prompt_position = "top",
  },
  keymaps = {
    move_up = { '<C-k>' },
    move_down = { '<C-j>' },
  }
})

vim.keymap.set('n', 'ff', function() require('fff').find_files() end, { desc = 'FFFind files' })
vim.keymap.set('n', 'fg', function() require('fff').live_grep() end, { desc = 'Grep files' })
