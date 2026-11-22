return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    indent = {
      indent = {
        only_scope = true, -- only show indent guides of the scope
        scope = {
          enabled = false,
        },
      },
    },
  },
}
