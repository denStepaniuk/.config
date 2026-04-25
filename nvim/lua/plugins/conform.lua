return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>ft',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      desc = 'Format buffer',
    },
  },
  opts = {
    formatters_by_ft = {
      -- Django templates
      htmldjango = { 'djlint' },

      -- JavaScript / TypeScript / React
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },

      -- Data formats
      json = { 'prettier' },
      yaml = { 'prettier' },

      -- HTML / CSS
      html = { 'prettier' },
      css = { 'prettier' },
    },
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_format = 'fallback',
    -- },
  },
}
