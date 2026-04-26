return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "grubber",
    },
  },

  {
    "grubber",
    dir = "~/.config/nvim/", -- Points to where /colors/grubber.vim lives
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme grubber]])
    end,
  },
}
