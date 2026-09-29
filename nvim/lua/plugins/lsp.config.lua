vim.lsp.config['html'] = {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html', },
  root_markers = { '.git' },
}

vim.lsp.config['lua_ls'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } },
    },
  },
}

vim.lsp.config['ruff'] = {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
  init_options = {
    settings = {
      -- Ruff language server settings go here
    }
  }
}
