return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local widgets = require("dap.ui.widgets")

      -- Keymaps to trigger default widgets
      vim.keymap.set("n", "<Leader>df", function()
        widgets.centered_float(widgets.frames)
      end, { desc = "DAP Frames" })
      vim.keymap.set("n", "<Leader>ds", function()
        widgets.centered_float(widgets.scopes)
      end, { desc = "DAP Scopes" })
      vim.keymap.set("n", "<Leader>dh", function()
        widgets.hover()
      end, { desc = "DAP Hover Value" })

      -- Sidebar style layout for scopes/variables
      vim.keymap.set("n", "<Leader>db", function()
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end, { desc = "DAP Sidebar Scopes" })
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("uv")
    end,
  },
  -- {
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   "igorlfs/nvim-dap-view",
  -- },
}
