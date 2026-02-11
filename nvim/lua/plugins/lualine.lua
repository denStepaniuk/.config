return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()

    local lazy_status = require("lazy.status")
    -- Cache for python version (fetched async once per session)
    local cached_python_version = nil
    local version_fetched = false

    -- Function to get the current venv name
    local function venv_name()
      local venv = os.getenv("VIRTUAL_ENV")
      if not venv then
        return ""
      end

      -- Get the folder name (e.g., .venv)
      local name = string.match(venv, "[^/]+$")

      -- Return cached version if available
      if cached_python_version then
        return string.format(" %s (%s)", name, cached_python_version)
      end

      -- Fetch python version async (only once)
      if not version_fetched then
        version_fetched = true
        vim.system({ "python", "-V" }, {}, function(obj)
          if obj.code == 0 then
            cached_python_version = string.match(obj.stdout, "Python (%d+%.%d+)")
          end
        end)
      end

      return " " .. name
    end

    require("lualine").setup({
      sections = {
        lualine_a = {},
        lualine_c = {
          {
            'filename',
            path = 1,
            shorting_target = 40,
          }
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { venv_name }, -- Added venv here
          -- 'encoding',
          'fileformat'
        },
        lualine_y = {
          {
            'lsp_status',
            icon = ' ',
            color = { fg = '#e4e4e4', bg = '#1c1c1c' }
          },
        },
        lualine_z = {
          {
            'location',
            color = { fg = '#e4e4e4', bg = '#1c1c1c' }
          },
        },
      },
    })
  end
}
