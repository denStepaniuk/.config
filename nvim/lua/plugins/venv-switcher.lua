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
      -- settings = {
      --   options = {
      --     notify_user_on_venv_activation = true,
      --     -- Brew uses "fd", not "fdfind"
      --     fd_binary_name = "fd",
      --   },
      --   search = {
      --     -- Search central ~/.venv/ folder
      --     central_venvs = {
      --       command = "fd 'python$' ~/.venv --full-path --color never -H",
      --     },
      --     -- Search for .venv or .veenv in the project root
      --     local_venvs = {
      --       command = "fd 'python$' . --max-depth 4 --color never -H",
      --     },
      --   },
      -- },
    })

    -- Auto-attach to .venv if it exists in project root
    -- local function auto_attach_venv()
    --   local cwd = vim.fn.getcwd()
    --   local venv_path = cwd .. "/.venv"
    --
    --   -- Check if .venv directory exists
    --   if vim.fn.isdirectory(venv_path) == 0 then
    --     return
    --   end
    --
    --   -- Find Python interpreters in .venv
    --   local python_path = venv_path .. "/bin/python"
    --   local python_path_win = venv_path .. "/Scripts/python.exe"
    --
    --   -- Determine the correct path based on OS
    --   local interpreters = {}
    --
    --   if vim.fn.executable(python_path) == 1 then
    --     table.insert(interpreters, python_path)
    --   end
    --   if vim.fn.executable(python_path_win) == 1 then
    --     table.insert(interpreters, python_path_win)
    --   end
    --
    --   -- Also check for versioned Python (python3, python3.11, etc.)
    --   local handle = io.popen("fd '^python[0-9.]*$' '" .. venv_path .. "/bin' --type x 2>/dev/null")
    --   if handle then
    --     for line in handle:lines() do
    --       if line and line ~= "" and not vim.tbl_contains(interpreters, line) then
    --         table.insert(interpreters, line)
    --       end
    --     end
    --     handle:close()
    --   end
    --
    --   if #interpreters == 0 then
    --     return
    --   end
    --
    --   -- If only one interpreter found, activate it directly
    --   if #interpreters == 1 then
    --     vs.activate_from_path(interpreters[1], "venv")
    --     return
    --   end
    --
    --   -- Multiple interpreters found - ask user to select
    --   vim.ui.select(interpreters, {
    --     prompt = "Multiple Python interpreters found in .venv. Select one:",
    --     format_item = function(item)
    --       return vim.fn.fnamemodify(item, ":t") .. " (" .. item .. ")"
    --     end,
    --   }, function(choice)
    --     if choice then
    --       vs.activate_from_path(choice, "venv")
    --     end
    --   end)
    -- end

    -- Auto-attach when plugin loads (triggered by ft = "python")
    -- Delay slightly to ensure LSP is initialized
    -- vim.defer_fn(auto_attach_venv, 100)
  end,
  ft = "python", -- Load when opening Python files
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
  },
}
