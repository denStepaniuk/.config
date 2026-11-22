return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      ruff = {
        on_attach = function(client, _)
          client.server_capabilities.hoverProvider = false
        end,
      },
    },
  },
}
