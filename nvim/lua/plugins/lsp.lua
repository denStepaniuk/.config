vim.lsp.enable({
  'lua_ls',
  'zuban',
  'html',
  'ruff',
  'ols',
  'typos_lsp'
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to derinition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references" })

vim.keymap.set({ "n", "v" }, "<leader>ca", function()
  require("tiny-code-action").code_action({
    filter = function(action)
      return not action.disabled
    end,
  })
end, { desc = "Code action" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })

vim.keymap.set("n", "<leader>d", function()
  vim.diagnostic.open_float({
    border = "rounded",
  })
end, { desc = "Show diagnostics float" })
