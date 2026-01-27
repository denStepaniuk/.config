---@type Base46Table
local M = {}

-- UI colors
M.base_30 = {
  white = "#e4e4e4",
  black = "#1c1c1c",
  darker_black = "#1c1c1c",
  black2 = "#262626",
  one_bg = "#262626",
  one_bg2 = "#262626",
  one_bg3 = "#262626",
  grey = "#262626",
  grey_fg = "#af875f",
  grey_fg2 = "#af875f",
  light_grey = "#af875f",

  red = "#ff5f5f",
  baby_pink = "#ff5f5f",
  pink = "#ff5f5f",

  line = "#262626",

  green = "#87d75f",
  vibrant_green = "#87d75f",

  blue = "#87afd7",
  nord_blue = "#87afd7",
  seablue = "#87afd7",

  yellow = "#ffd700",
  sun = "#ffd700",

  purple = "#afd7af",
  dark_purple = "#afd7af",

  teal = "#afd7af",
  orange = "#ffd700",
  cyan = "#afd7af",

  statusline_bg = "#262626",
  lightbg = "#262626",
  pmenu_bg = "#262626",
  folder_bg = "#87afd7",
}

-- Base16 syntax mapping (mechanical)
M.base_16 = {
  base00 = "#1c1c1c", -- background
  base01 = "#262626",
  base02 = "#262626",
  base03 = "#af875f", -- comments
  base04 = "#af875f",
  base05 = "#e4e4e4", -- foreground
  base06 = "#e4e4e4",
  base07 = "#e4e4e4",

  base08 = "#ff5f5f", -- red
  base09 = "#ffd700", -- yellow
  base0B = "#87d75f", -- green
  base0A = "#ffd700",
  base0C = "#afd7af", -- cyan
  base0D = "#87afd7", -- blue
  base0E = "#ffd700",
  base0F = "#af875f",
}

-- Exact highlight rules from your Vim file
M.polish_hl = {
  defaults = {
    LineNr = {
      fg = "#af875f"
    },
    CursorLineNr = {
      fg = "#ffd700", -- your yellow
    },
    Normal = { fg = "#e4e4e4", bg = "#1c1c1c" },
    Comment = { fg = "#af875f" },
    String = { fg = "#87d75f" },
    Function = { fg = "#87afd7" },
    Identifier = { fg = "#e4e4e4" },
    Statement = { fg = "#ffd700", bold = true },
    Type = { fg = "#ffd700", bold = true },
    Constant = { fg = "#afd7af" },
    PreProc = { fg = "#afd7af" },
    SpecialChar = { fg = "#afd7af" },
    Todo = { fg = "#af875f", italic = true },

    Error = { fg = "#ff5f5f" },
    WarningMsg = { fg = "#ffd700" },

    StatusLine = { fg = "#e4e4e4", bg = "#262626", bold = true },
    StatusLineNC = { fg = "#e4e4e4", bg = "#262626" },

    Pmenu = { fg = "#e4e4e4", bg = "#262626" },
    PmenuSel = { fg = "#1c1c1c", bg = "#ffd700", bold = true },

    MatchParen = { fg = "#ffd700", bold = true },

    DiffAdd = { fg = "#87d75f" },
    DiffChange = { fg = "#87afd7" },
    DiffDelete = { fg = "#ff5f5f" },
    DiffText = { fg = "#87afd7", underline = true },

    SpellBad = { fg = "#ff5f5f", underline = true },
    SpellCap = { fg = "#87afd7", underline = true },
    SpellLocal = { fg = "#ffd700", underline = true },
    SpellRare = { underline = true },
  },
}

M.type = "dark"

return M
