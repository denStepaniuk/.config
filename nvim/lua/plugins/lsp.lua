return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
        underline = true,
      },
      servers = {
        zubanls = {
          enabled = true,
          name = "ZubanLS",
          cmd = { "zuban", "server" },
          filetypes = { "python" },
          root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "setup.py", "setup.cfg", ".git"),
        },
        basedpyright = {
          enabled = false,
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        pyright = {
          enabled = false,
          settings = {
            pyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
          },
        },
        typos_lsp = {},
        djlsp = {},
        html = {
          filetypes = { "html" },
        },
        cssls = {
          filetypes = { "css" },
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "pyright",
        "ruff",
        "lua_ls",
        "vtsls",
        "jsonls",
        "dockerls",
        "yamlls",
        "html",
        "cssls",
        "typos_lsp",
      },
    },
  },
}
