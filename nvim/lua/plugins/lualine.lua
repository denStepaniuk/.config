return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("lualine").setup({
        sections = {
          lualine_a = {},
          lualine_x = { 'encoding', 'fileformat' },
          lualine_y = {
            {
              'lsp_status',
              icon = '⚙',
              color = { fg = '#e4e4e4', bg = '#1c1c1c' }
            },
          },
          lualine_z = {
            { 'location',
              color = { fg = '#e4e4e4', bg = '#1c1c1c' } -- black background, light text
            },
          },
        },
      })
    end
}
