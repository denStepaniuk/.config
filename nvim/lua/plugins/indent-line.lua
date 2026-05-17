return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  config = function()
    require("ibl").setup({
      indent = {
        char = "",
      },
      scope = {
        show_start = false,
        show_end = false,
        enabled = false,
      },
      exclude = {
        filetypes = { "help", "dashboard", "alpha", "NvimTree", "lazy", "mason" },
        buftypes = { "terminal", "nofile" },
      },
    })
  end,
}
