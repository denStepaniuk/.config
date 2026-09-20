require('oil').setup({
  skip_confirm_for_simple_edits = true,
  keymaps = {
    ["<C-s>"] = false, -- have to keep it disabled as it intermit vim actions changing slpits;
    ["<C-h>"] = false,
    ["<C-l>"] = false,
    ["<C-r>"] = "actions.refresh", -- rebind froom default ctrl+l;
  },
  show_hidden = true,
})

vim.keymap.set("n", "<leader>o", "<cmd>:Oil<CR>", { desc = "Open Oil explorer" })

