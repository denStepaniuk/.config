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
    completion = { documentation = { auto_show = false } },
  },
}
