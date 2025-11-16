return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			require("neo-tree").setup({
				filesystem = {
					window = {
						mappings = {
							["P"] = "toggle_preview", -- press P to toggle preview window
						},
					},
					components = {
						preview = true, -- enable the preview component
					},
					use_libuv_file_watcher = true,
				},
			})

			vim.keymap.set("n", "<leader>nn", ":Neotree<CR>", { desc = "Open explorer" })
			vim.keymap.set("n", "<leader>nc", ":Neotree close<CR>", { desc = "Close explorer" })
			vim.keymap.set("n", "<leader>nr", ":Neotree reveal<CR>", { desc = "Reveal current file in explorer" })
		end,
	},
}
