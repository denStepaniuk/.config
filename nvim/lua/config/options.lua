local opt = vim.opt

opt.expandtab = true
opt.winborder = "rounded"
opt.scrolloff = 8
opt.listchars = {
  tab = "  ", -- Replaces the '>' arrow on tab stops with spaces
  trail = "·", -- Shows trailing spaces as dots (or '•', '␣')
  nbsp = "␣", -- Non-breaking spaces
}
