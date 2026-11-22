return {
    "stevearc/conform.nvim",
    opts = {
      -- Prefer prettierd if running, fall back to prettier
      formatters_by_ft = {
        html = { "prettierd", "prettier", stop_after_first = true },
        htmldjango = { "prettierd", "prettier", stop_after_first = true },
      },

      format_on_save = false,
    },
}
