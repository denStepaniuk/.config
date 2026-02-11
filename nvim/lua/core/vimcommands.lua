vim.cmd("let g:netrw_liststyle = 3")
vim.cmd.colorscheme("grubber")

-- vim.cmd("set fillchars=eob:\\ ") -- allow to hide tilda '~' symbols

vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#ffd700", fg = "#1c1c1c" })
local augroup = vim.api.nvim_create_augroup("UserConfig", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  desc = "Highlight when yanking text",
  callback = function()
    vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 150 })
  end,
})

-- :Config command to get into config folder
vim.api.nvim_create_user_command("Config", function()
  vim.cmd("edit " .. vim.fn.stdpath("config"))
end, {})
