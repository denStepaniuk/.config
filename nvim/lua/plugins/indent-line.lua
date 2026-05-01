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
        show_start = false, -- Optional: avoids a horizontal line at the start
        show_end = false,
        enabled = false, -- Disable extra scope lines
      },
      exclude = {
        filetypes = { "help", "dashboard", "alpha", "NvimTree", "lazy", "mason" },
        buftypes = { "terminal", "nofile" },
      },
    })
  end,
}
