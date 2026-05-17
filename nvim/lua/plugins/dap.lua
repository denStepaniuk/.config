return {
  {
    "mfussenegger/nvim-dap-python",
    opts = function(_, opts)
      local dap = require("dap")

      opts = opts or {}

      require("dap-python").setup("python")
      require("dap-python").test_runner = "pytest"

      dap.configurations.python = dap.configurations.python or {}

      table.insert(dap.configurations.python, {
        type = "python",
        request = "launch",
        name = "Django runserver",
        program = vim.fn.getcwd() .. "/manage.py",
        args = { "runserver", "--noreload" },
        django = true,
      })

      return opts
    end,
  },
}
