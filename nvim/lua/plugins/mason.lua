return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    }
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = { 'mason-org/mason.nvim' },
    opts = {
      ensure_installed = {
        'djlint',
        'prettier',
        "basedpyright",
        "ruff",
        "lua_ls",
        "vtsls",
        "eslint",
        "jsonls",
        "dockerls",
        "yamlls",
        "html",
        "cssls"
      },
    },
  },
}
