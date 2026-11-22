return {
  "dmtrKovalenko/fff",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = {
    title = "Seeker",
    debug = {
      enabled = false,
      show_scores = true,
    },
    layout = {
      prompt_position = "top",
    },
    keymaps = {
      move_up = { "<Up>", "<C-k>" },
      move_down = { "<Down>", "<C-j>" },
    },
  },
  lazy = false, -- the plugin lazy-initialises itself
  keys = {
    {
      "ff",
      function()
        require("fff").find_files()
      end,
      desc = "FFFind files",
    },
    {
      "fg",
      function()
        require("fff").live_grep()
      end,
      desc = "LiFFFe grep",
    },
    {
      "fz",
      function()
        require("fff").live_grep({ grep = { modes = { "fuzzy", "plain" } } })
      end,
      desc = "Live fffuzy grep",
    },
    {
      "fc",
      function()
        require("fff").live_grep_under_cursor()
      end,
      mode = { "n", "x" },
      desc = "Search current word / selection",
    },
  },
}
