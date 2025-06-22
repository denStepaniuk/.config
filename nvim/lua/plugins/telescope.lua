return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-ui-select.nvim",
			config = function()
				-- This is your opts table
				require("telescope").setup({
					extensions = {
						["ui-select"] = {
							require("telescope.themes").get_dropdown({
								-- even more opts
							}),

							-- pseudo code / specification for writing custom displays, like the one
							-- for "codeactions"
							-- specific_opts = {
							--   [kind] = {
							--     make_indexed = function(items) -> indexed_items, width,
							--     make_displayer = function(widths) -> displayer
							--     make_display = function(displayer) -> function(e)
							--     make_ordinal = function(e) -> string
							--   },
							--   -- for example to disable the custom builtin "codeactions" display
							--      do the following
							--   codeactions = false,
							-- }
						},
					},
				})
				-- To get ui-select loaded and working with telescope, you need to call
				-- load_extension, somewhere after setup function:
				require("telescope").load_extension("ui-select")
			end,
		},
		-- "folke/todo-comments.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod
		--
		-- local trouble = require("trouble")
		-- local trouble_telescope = require("trouble.sources.telescope")
		--
		-- or create your custom action
		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						-- ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						-- ["<C-t>"] = trouble_telescope.open,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		-- 	-- 	-- set keymaps
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
