return {
  "nvim-mini/mini.hues",
  version = "*",
  lazy = false,
  priority = 1000,
  config = function()
    require("mini.hues").setup({
      background = "#11262d",
      foreground = "#c0c8cc",
    })
  end,
}
