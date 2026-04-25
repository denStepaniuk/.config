return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    opts = {
      servers = {
        pyright = { enabled = false },
        basedpyright = {
          enabled = true,
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
        eslint = {},
        djlsp = {},
        html = {
          filetypes = { "html", "htmldjango" },
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
        "basedpyright",
        "ruff",
        "lua_ls",
        "vtsls",
        "eslint",
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
