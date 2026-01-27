require "nvchad.options"

-- add yours here!
vim.cmd("let g:netrw_liststyle = 3")

local o = vim.o

-- line numbers
o.relativenumber = true -- show relative line numbers
o.number = true -- shows absolute line number on cursor line (when relative number is on)
o.termguicolors = true
o.winborder = "rounded" -- make round bordeds around floating windows
-- turn off swapfile
o.swapfile = false
-- o.cursorlineopt ='both' -- to enable cursorline!
