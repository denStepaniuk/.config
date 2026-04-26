return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  config = function()
    local hl_color = "#3a3a3a"

    vim.api.nvim_set_hl(0, "IblIndent", { fg = hl_color, nocombine = true })
    vim.api.nvim_set_hl(0, "IblIndentScope", { fg = hl_color, nocombine = true })

    require("ibl").setup({
      indent = {
        char = "│",
        highlight = { "IblIndent" },
      },
      scope = {
        enabled = false, -- disable extra scope lines
      },
      exclude = {
        filetypes = { "help", "dashboard", "alpha", "NvimTree", "lazy", "mason" },
        buftypes = { "terminal", "nofile" },
      },
    })
  end,
}
