vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.opt.clipboard:append("unnamedplus")

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim",           { desc = "Color scheme" } },
	{ src = "https://github.com/stevearc/oil.nvim",            { desc = "" } },
	{ src = "https://github.com/echasnovski/mini.pick",        { desc = "Picker, telescope alternative" } },
	{ src = "https://github.com/neovim/nvim-lspconfig",        { desc = "LSP config, actually" } },
	{ src = "https://github.com/chomosuke/typst-preview.nvim", { desc = "" } },
	{ src = "https://github.com/mason-org/mason.nvim",         { desc = "Mason LSP servers manager" } }
})

require "mason".setup()
require "oil".setup()
require "mini.pick".setup()

vim.cmd("colorscheme vague")
vim.lsp.enable({
		"lua_ls",
		"vtsls"
})
