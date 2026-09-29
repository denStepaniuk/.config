vim.pack.add({
  "https://github.com/dmtrKovalenko/fff",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/malewicz1337/oil-git.nvim",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  -- code actions
  "https://github.com/rachartier/tiny-code-action.nvim",
  -- modern cmd line
  "https://github.com/rachartier/tiny-cmdline.nvim",
  -- amazing indent line
  'https://github.com/rafamadriz/friendly-snippets',
  --mini
  'https://github.com/nvim-mini/mini.snippets',
  'https://github.com/nvim-mini/mini.indentscope',
  'https://github.com/nvim-mini/mini.completion',
  "https://github.com/stevearc/conform.nvim",
  'https://github.com/nvim-treesitter/nvim-treesitter',
})

require("vim._core.ui2").enable({}) -- explicit enabling user interface v.2

require('plugins.treesitter')
require('plugins.fff')
require('plugins.oil')
require('plugins.mason')
require('plugins.lsp')
require('plugins.completion')

-- require('mini.completion').setup()

require("tiny-cmdline").setup()
require('mini.snippets').setup()
require('mini.indentscope').setup({
  symbol = "│",
})
