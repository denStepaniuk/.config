-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- leave some space for large files in editor
keymap.set("n", "G", "Gzz")

-- clear search highlights
vim.keymap.set("n", "<Esc>", function()
	vim.cmd.nohlsearch()
	-- vim.api.nvim_buf_clear_namespace(0, multicursor_ns, 0, -1)
end, { desc = "Clear search highligts & multicursors" })

-- keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Navigate splits in NORMAL mode
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- visual mode: copy the file path plus the selected line range
keymap.set("v", "<leader>cp", function()
	copy_ref({ visual = true })
end, { desc = "Copy file path with line range" })
