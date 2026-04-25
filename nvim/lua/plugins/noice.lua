return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "lsp",
          kind = "progress",
          find = "basedpyright",
        },
        opts = { skip = true },
      },
    },
  },
}
