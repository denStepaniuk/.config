return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"vtsls",
			"lua_ls",
			"jsonls",
			"html",
			"cssls",
			"bashls",
			"dockerls",
			"marksman",
			"yamlls",
		},
		automatic_enable = true,
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "biome" },
				javascriptreact = { "biome" },
				typescript = { "biome" },
				typescriptreact = { "biome" },
				json = { "biome" },
				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true, -- if Biome isn’t available, fall back to LSP formatting
				async = false, -- format synchronously (blocks save until done)
				timeout_ms = 500, -- give it half a second max
			},
		})

		-- vim.api.nvim_create_autocmd("LspAttach", {}) -- need to clarify more as I want to be sure keys wont clash with other lsp-s
		-- keybinding
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Info hovering over lang structure" })
		vim.keymap.set("n", "<space>rs", vim.lsp.buf.signature_help, { desc = "Signature help" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename occurance" })
		vim.keymap.set("n", "gtr", "<cmd>Telescope lsp_references<CR>", { desc = "Show references in popup" })
		-- vim.keymap.set("n", "gtr", vim.lsp.buf.references, { desc = "Go to references" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "Go to code action" })
		-- diagnostic
		vim.keymap.set("n", "gh", vim.diagnostic.open_float, { desc = "Open float diagnostic" })
	end,
}
