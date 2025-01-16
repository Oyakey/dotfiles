local M = {}

M.base_30 = {
  white = "#D9E0EE",
  darker_black = "#161320",
  black = "#1E1E2E", -- nvim bg
  black2 = "#1A1826",
  one_bg = "#302D41", -- real bg of Mocha
  one_bg2 = "#292737",
  one_bg3 = "#2F2C3D",
  grey = "#6E6C7E",
  grey_fg = "#908Caa",
  grey_fg2 = "#A6A1D2",
  light_grey = "#C3BAC6",
  red = "#F38BA8",
  baby_pink = "#FFA5C3",
  pink = "#F5C2E7",
  line = "#2A2837", -- for lines like vertsplit
  green = "#ABE9B3",
  vibrant_green = "#B9F27C",
  nord_blue = "#8CAAEE",
  blue = "#89B4FA",
  yellow = "#FAE3B0",
  sun = "#F9E2AF",
  purple = "#CBA6F7",
  dark_purple = "#B4BEFE",
  teal = "#94E2D5",
  orange = "#FAB387",
  cyan = "#89DCEB",
  statusline_bg = "#1E1E2E",
  lightbg = "#302D41",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#89B4FA",
  lavender = "#B4BEFE",
}

M.base_16 = {
  base00 = "#1E1E2E",
  base01 = "#181825",
  base02 = "#302D41",
  base03 = "#575268",
  base04 = "#6E6C7E",
  base05 = "#908Caa",
  base06 = "#A6A1D2",
  base07 = "#D9E0EE",
  base08 = "#F38BA8",
  base09 = "#FAB387",
  base0A = "#FAE3B0",
  base0B = "#ABE9B3",
  base0C = "#89DCEB",
  base0D = "#89B4FA",
  base0E = "#CBA6F7",
  base0F = "#F38BA8",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "catppuccin-mocha")

return M
