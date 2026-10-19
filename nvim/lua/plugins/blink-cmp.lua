local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup({
  keymap = {
    preset = "default",
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
    ["<C-e>"] = { "hide", "fallback" },
    ["<Tab>"] = { "accept", "fallback" },
  },
})
