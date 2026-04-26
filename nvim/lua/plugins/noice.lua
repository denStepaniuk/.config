return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = true,
    },
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
