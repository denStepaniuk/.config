vim.pack.add({
  "https://github.com/dmtrKovalenko/fff",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/malewicz1337/oil-git.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/rachartier/tiny-code-action.nvim",
  "https://github.com/rachartier/tiny-cmdline.nvim",
  'https://github.com/nvim-mini/mini.indentscope',
})


require("vim._core.ui2").enable({}) -- explicit enabling user interface v.2

require('plugins.fff')
require('plugins.oil')
require('plugins.mason')
require('plugins.lsp')
-- require('plugins.diagnostics')

require("tiny-cmdline").setup()
require('mini.indentscope').setup({
  symbol = "│",
})
