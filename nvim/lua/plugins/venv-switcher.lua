return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    -- "echasnovski/mini.pick",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local vs = require("venv-selector")

    vs.setup({
      -- Automatically activate the best match on startup
      auto_refresh = true,
      settings = {
        options = {
          -- Look for these names in the project root
          on_venv_activate_callback = nil,
          activate_path = ".venv",
        },
        search = {
          -- Define the search behavior for the project root
          vultr_venv = {
            command = "fd -H -t d '^\\.venv$' --max-depth 1",
          },
        },
      },
    })
  end,
  ft = "python", -- Load when opening Python files
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
  },
}
