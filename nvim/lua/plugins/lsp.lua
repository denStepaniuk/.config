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
        pyright = {
          enabled = false,
        },
        -- FAST completions / navigation
        zubanls = {
          enabled = true,
          cmd = { "zuban", "server" },
          filetypes = { "python" },
          root_dir = require("lspconfig.util").root_pattern(
            "pyproject.toml",
            "setup.py",
            "setup.cfg",
            "requirements.txt",
            ".git"
          ),
          -- Important when combining with basedpyright
          "basedpyright",
          single_file_support = true,
        },
        -- MAIN TYPECHECKER
        basedpyright = {
          enabled = true,
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                autoSearchPaths = true,
                -- useful for django
                extraPaths = {
                  "./",
                },
              },
            },
          },
        },
        ruff = {
          enabled = true,
          init_options = {
            settings = {
              -- Ruff should lint only
              organizeImports = true,
            },
          },
          on_attach = function(client)
            -- avoid hover conflicts with pyright
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
        -- Django templates
        djlsp = {},
        html = {
          filetypes = { "html" },
        },
        cssls = {
          filetypes = { "css" },
        },
        jsonls = {},
        yamlls = {},
        dockerls = {},
        lua_ls = {},
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        -- Python
        "zuban",
        "basedpyright",
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
      },
    },
  },
}
