local M = {}

M.base_30 = {
  white = "#4C4F69",
  darker_black = "#EFF1F5",
  black = "#E6E9EF", -- nvim bg
  black2 = "#DCE0E8",
  one_bg = "#CCD0DA", -- real bg of Latte
  one_bg2 = "#BCC0CC",
  one_bg3 = "#ACB0BD",
  grey = "#9CA0AE",
  grey_fg = "#8C90A2",
  grey_fg2 = "#7C8091",
  light_grey = "#6C7081",
  red = "#D20F39",
  baby_pink = "#E64553",
  pink = "#EA76CB",
  line = "#D3D7DD", -- for lines like vertsplit
  green = "#40A02B",
  vibrant_green = "#3CA541",
  nord_blue = "#2A7EBC",
  blue = "#1E66F5",
  yellow = "#DF8E1D",
  sun = "#EBA816",
  purple = "#8839EF",
  dark_purple = "#7C2CD9",
  teal = "#179299",
  orange = "#FE640B",
  cyan = "#04A5E5",
  statusline_bg = "#EDEFEB",
  lightbg = "#D8DCE2",
  pmenu_bg = "#40A02B",
  folder_bg = "#1E66F5",
  lavender = "#7287FD",
}

M.base_16 = {
  base00 = "#EFF1F5",
  base01 = "#E6E9EF",
  base02 = "#CCD0DA",
  base03 = "#BCC0CC",
  base04 = "#ACB0BD",
  base05 = "#4C4F69",
  base06 = "#404456",
  base07 = "#303446",
  base08 = "#D20F39",
  base09 = "#FE640B",
  base0A = "#DF8E1D",
  base0B = "#40A02B",
  base0C = "#04A5E5",
  base0D = "#1E66F5",
  base0E = "#8839EF",
  base0F = "#D20F39",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "light"

M = require("base46").override_theme(M, "catppuccin latte")

return M
