vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("set fillchars=eob:\\ ") -- allow to hide tilda '~' symbols
vim.cmd("colorscheme grubber")

-- :Config command to get into config folder
vim.api.nvim_create_user_command("Config", function()
  vim.cmd("edit" .. vim.fn.stdpath("config"))
end, {})

-- enabe cursorline for floated windows
vim.api.nvim_create_autocmd("User", {
  pattern = "MiniPickStart",
  callback = function()
    local win_id = vim.api.nvim_get_current_win()
    -- 1. Show both the horizontal bar AND the yellow number
    vim.wo[win_id].cursorlineopt = "both"
    -- 2. Force numbers ON (required for CursorLineNr to show up)
    vim.wo[win_id].number = true
    -- 3. Optional: If your colors are still weird, force the winhl
    vim.wo[win_id].winhl = "CursorLineNr:CursorLineNr,CursorLine:CursorLine"
  end,
})
