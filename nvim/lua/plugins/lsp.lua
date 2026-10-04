return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
    },
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
        underline = true,
      },
      servers = {
        zuban = {},
        ruff = {
          enabled = true,
          init_options = {
            settings = {
              -- Ruff should lint only
              organizeImports = true,
            },
          },
          on_attach = function(client)
            -- avoid hover conflicts with any py lsps
            client.server_capabilities.hoverProvider = false
          end,
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
        html = {
          filetypes = { "html", "htmldjango" },
        },
        cssls = {
          filetypes = { "css" },
        },
        -- jsonls = {},
        -- yamlls = {},
        -- dockerls = {},
        lua_ls = {},
        ols = {},
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        -- Python
        "ruff",
        -- Web
        "vtsls",
        "html",
        "cssls",
        "jsonls",
        "yamlls",
        "dockerls",
        -- Other
        "lua_ls",
        "typos_lsp",
        "ols",
      },
    },
  },
}
