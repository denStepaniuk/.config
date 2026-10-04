-- Completion
vim.opt.completeopt = {
	"menuone",
	"noselect",
	"fuzzy",
	"nosort",
}



-- -- Snippets
-- local snippets = require("mini.snippets")
--
-- snippets.setup({
-- 	snippets = {
-- 		snippets.gen_loader.from_lang(),
-- 	},
-- 	mappings = {
-- 		expand = "<C-s>",
-- 	},
-- })
--
-- -- Include snippets in LSP completion
-- snippets.start_lsp_server({
-- 	match = false,
-- })
--
-- require("mini.completion").setup({
-- 	lsp_completion = {
-- 		process_items = function(items, base)
-- 			return MiniCompletion.default_process_items(items, base, {
-- 				filtersort = "fuzzy",
-- 				kind_priority = {
-- 					Snippet = 99,
-- 				},
-- 			})
-- 		end,
-- 	},
-- })
--
-- -- require("mini.cmdline").setup({})
--
-- local function accept_completion(fallback)
-- 	return function()
-- 		if vim.fn.pumvisible() == 0 then
-- 			return fallback
-- 		end
--
-- 		local selected = vim.fn.complete_info({ "selected" }).selected
--
-- 		if selected == -1 then
-- 			return "<C-n><C-y>"
-- 		end
--
-- 		return "<C-y>"
-- 	end
-- end
--
-- vim.keymap.set("i", "<Tab>", accept_completion("<Tab>"), {
-- 	expr = true,
-- 	desc = "Accept completion or insert tab",
-- })
-- --
-- -- vim.keymap.set("i", "<CR>", accept_completion("<CR>"), {
-- -- 	expr = true,
-- -- 	desc = "Accept completion or insert newline",
-- -- })
--
-- -- vim.keymap.set("c", "<C-j>", "<C-n>", {
-- -- 	desc = "Next command-line completion",
-- -- })
-- --
-- -- vim.keymap.set("c", "<C-k>", "<C-p>", {
-- -- 	desc = "Previous command-line completion",
-- -- })
