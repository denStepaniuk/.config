vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})

require('oil').setup({})

vim.keymap.set("n", "<leader>o", "<cmd>:Oil<CR>", { desc = "Open Oil explorer" })

-- return {
--   "stevearc/oil.nvim",
--   ---@module 'oil'
--   ---@type oil.SetupOpts
--   opts = {
--     columns = {
--       "icon",
--     },
--     win_options = {
--       signcolumn = "yes",
--     },
--     default_file_explorer = true,
--     view_options = {
--       show_hidden = true,
--       is_ignored_by_git = false,
--     },
--     watch_for_changes = true,
--     skip_confirm_for_simple_edits = true,
--     lsp_file_methods = {
--       enabled = true,
--     },
--     keymaps = {
--       ["<C-r>"] = "actions.refresh",
--       ["<C-l>"] = false,
--       ["<C-h>"] = false,
--     },
--   },
--   lazy = false,
--
--   config = function(_, opts)
--     require("oil").setup(opts)
--     vim.keymap.set("n", "<leader>o", "<cmd>:Oil<CR>", { desc = "Open Oil explorer" })
--   end,
-- }
