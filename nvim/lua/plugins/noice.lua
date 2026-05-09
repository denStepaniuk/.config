return {
  "folke/noice.nvim",
  enabled = true,
  opts = {
    -- cmdline = { enabled = false },
    -- popupmenu = { enabled = false },
    -- messages = { enabled = false },
    lsp = {
      signature = {
        enabled = true,
        auto_open = {
          enabled = true,
          trigger = true,
        },
      },
      -- hover = { enabled = false },
      -- message = { enabled = false },
    },
    presets = {
      lsp_doc_border = true,
      -- bottom_search = false,
      -- command_palette = false,
      -- long_message_to_split = false,
      -- inc_rename = false,
    },
    routes = {
      {
        filter = {
          event = "lsp",
          kind = "progress",
          find = "pyright",
        },
        -- opts = { skip = true },
      },
    },
  },
}
