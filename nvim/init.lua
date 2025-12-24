-- General settings
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.winborder = "rounded" -- make round bordeds around floating windows
vim.opt.clipboard:append("unnamedplus")

-- Keybinding
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')
vim.keymap.set('n', '<leader>e', ':Oil<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- Splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Navigate splits in NORMAL mode
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Plugins
vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim",              { desc = "Color scheme" } },
	{ src = "https://github.com/stevearc/oil.nvim",               { desc = "" } },
	{ src = "https://github.com/echasnovski/mini.pick",           { desc = "Picker, telescope alternative" } },
	{ src = "https://github.com/neovim/nvim-lspconfig",           { desc = "LSP config, what else" } },
	{ src = "https://github.com/mason-org/mason.nvim",            { desc = "Mason LSP servers manager" } },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", { desc = "Treesitter, though" } },
})

require "mason".setup()
require "oil".setup()

require "mini.pick".setup({
	mappings = {
		move_up = '<C-k>',
		move_down = '<C-j>'
	}
})

-- require "vague".setup({ transparent = true })
-- vim.cmd("colorscheme vague")

require "nvim-treesitter".install({
	'javascript',
	'javascriptreact',
	'typescript',
	'typescriptreact',
	'html',
	'json',
	'docker',
	'xml',
	'yaml'
})

vim.lsp.enable({
	'lua_ls',
	'vtsls',
	'eslint'
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	severity_sort = true,
})
