vim.cmd('colorscheme grubber')

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
  'https://github.com/nvim-mini/mini.icons',
  'https://github.com/nvim-mini/mini.indentscope',
  -- blink completion
  'https://github.com/saghen/blink.lib',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/stevearc/conform.nvim',
  'https://github.com/b0o/SchemaStore.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/folke/flash.nvim',
})

local plug_folder = 'plugins.'

require("vim._core.ui2").enable({}) -- explicit enabling user interface v.2

require(plug_folder ..'treesitter')
require(plug_folder ..'fff')
require(plug_folder ..'oil')
require(plug_folder ..'mason')
require(plug_folder ..'lsp')
require(plug_folder .. 'blink-cmp')
require(plug_folder .. 'flash')

require("tiny-cmdline").setup()
require('mini.icons').setup()
require('mini.snippets').setup()
require('mini.indentscope').setup({
  symbol = "│",
  draw = {
    animation = function()
      return 0
    end
  },
})

