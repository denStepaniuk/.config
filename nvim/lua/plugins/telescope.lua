return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    main = "telescope",
    opts = {
        defaults = {
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--no-ignore",
                "--fixed-strings"
            }
        },
        pickers = {
            find_files = {
                no_ignore_parent = true
            }
        }
    },
    config = function ()
      local builtin = require('telescope.builtin')
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              -- ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
              -- ["<C-t>"] = trouble_telescope.open,
            },
          },
        },
      })

        vim.keymap.set('n', '<leader>f', builtin.find_files, {})
        vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>b', builtin.buffers, {})
    end
}
