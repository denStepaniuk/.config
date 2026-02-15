return {
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    config = function()
      -- setup for individual servers (pyright, ruff, etc.)
      -- require('lspconfig').pyright.setup({})
      vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, { desc = "Format text in buffer" })
      vim.keymap.set('n', '<leader>fd', vim.diagnostic.open_float, { desc = "Open float diagnostic" })
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        "pyright",
        "ruff",
        "lua_ls",
        "vtsls",
        "jsonls",
        "dockerls",
      },
    }
  },
}
