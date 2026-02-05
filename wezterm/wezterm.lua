local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 30

config.font_size = 16
config.font = wezterm.font('JetBrains Mono')
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.audible_bell = "Disabled"

config.cursor_bg = "#ffd700"
config.cursor_fg = "#1c1c1c"
config.cursor_border_color = "#ffd700"

config.colors = {
  -- Background and foreground
  background = "#1c1c1c",
  foreground = "#e4e4e4",

  -- ANSI colors
  ansi = {
    "#1c1c1c", -- black
    "#ff5f5f", -- red
    "#87d75f", -- green
    "#ffd700", -- yellow
    "#87afd7", -- blue
    "#af875f", -- magenta / brown
    "#afd7af", -- cyan
    "#e4e4e4", -- white
  },

  brights = {
    "#262626", -- bright black / gray
    "#ff5f5f", -- bright red
    "#87d75f", -- bright green
    "#ffd700", -- bright yellow
    "#87afd7", -- bright blue
    "#af875f", -- bright magenta / brown
    "#afd7af", -- bright cyan
    "#e4e4e4", -- bright white
  },

  -- Selection and scrollbar
  selection_bg = "#262626",
  selection_fg = "#e4e4e4",
  scrollbar_thumb = "#262626",
}

config.color_scheme = 'Gruber (base16)'

return config
