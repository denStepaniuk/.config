require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gr", "<cmd> Telescope lsp_references <cr>", { desc = "References to usage"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
