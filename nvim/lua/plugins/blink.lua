return {
  "saghen/blink.cmp",
  opts = {
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
