return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      -- add vim-dadbod-completion to your completion providers
      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
      },
    },
    keymap = {
      preset = "default",
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<Tab>"] = { "accept", "fallback" },
    },
    completion = {
      ghost_text = { enabled = false },
      documentation = { auto_show = false },
    },
  },
}
