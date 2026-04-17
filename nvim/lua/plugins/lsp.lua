return {
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      vim.lsp.config('basedpyright', {
        capabilities = capabilities,
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "standard",
              autoImportCompletions = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      vim.lsp.config('vtsls', {
        capabilities = capabilities,
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
      })

      vim.lsp.config('typos_lsp', {
        capabilities = capabilities,
      })

      vim.lsp.config('eslint', {
        capabilities = capabilities,
      })

      vim.lsp.config('djlsp', {
        capabilities = capabilities,
      })

      vim.lsp.config('html', {
        capabilities = capabilities,
        filetypes = { 'html', 'htmldjango' }
      })

      vim.lsp.config('cssls', {
        capabilities = capabilities,
        filetypes = { 'css' }
      })

      vim.keymap.set('n', '<leader>fd', vim.diagnostic.open_float, { desc = "Open float diagnostic" })
      vim.keymap.set("n", "[d", function()
        vim.diagnostic.jump({
          count = -1,
          float = true,
          wrap = true,
        })
      end, {})
      vim.keymap.set("n", "]d", function()
        vim.diagnostic.jump({
          count = 1,
          float = true,
          wrap = true,
        })
      end, {})
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
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
        "typos_lsp"
      },
    }
  },
}
