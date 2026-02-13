require("core")
require("config.lazy")

require("oil").setup() -- initialization of Oil explorer
require("lualine").setup {
  sections = {
    lualine_a = {},
    lualine_z = {
      { 'location',
        color = { fg = '#e4e4e4', bg = '#1c1c1c' } -- black background, light text
      },
    },
  },
} -- init of lualine
