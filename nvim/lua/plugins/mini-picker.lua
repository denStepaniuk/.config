return {
  {'nvim-mini/mini.pick', version = false},

  vim.keymap.set('n', '<leader>ff', ':Pick files<CR>'),
  vim.keymap.set('n', '<leader>fs', ':Pick grep_live<CR>')
}

