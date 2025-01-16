local M = {}

M.base_30 = {
  white = "#ffffff", -- custom
  darker_black = "#171F2B",
  black = "#1F2939", --  nvim bg
  black2 = "#2f3344",
  one_bg = "#333748",
  one_bg2 = "#3c4051",
  one_bg3 = "#444859",
  grey = "#515566",
  grey_fg = "#5b5f70",
  grey_fg2 = "#65697a",
  light_grey = "#6d7182",
  red = "#FD8DA3",
  baby_pink = "#606475",
  pink = "#ff5370", -- base16
  line = "#3f4354", -- for lines like vertsplit
  green = "#77D5A3", --base16
  vibrant_green = "#96e88d", -- custom
  nord_blue = "#8fb7ff",
  blue = "#82aaff", -- base16
  yellow = "#ffcb6b", -- base16
  sun = "#ffd373",
  purple = "#BD9CFE", -- base16
  dark_purple = "#b383d2", --custom
  teal = "#89ffe6", -- custom
  orange = "#ffa282", -- base16
  cyan = "#85CDF1", -- base16
  statusline_bg = "#2d3142",
  lightbg = "#3c4051",
  pmenu_bg = "#92A9FF", -- custom
  folder_bg = "#92A9FF",
}

M.base_16 = {
  base00 = "#171F2B", -- old
  base01 = "#475365", -- old
  base02 = "#32374d", -- old
  base03 = "#676e95", -- old
  base04 = "#8796b0", -- old
  base05 = "#D9DFE7",
  base06 = "#ff00ff",
  base07 = "#00ff00", -- old
  base08 = "#BD9CFE",
  base09 = "#FFD395",
  base0A = "#92A9FF",
  base0B = "#77D5A3",
  base0C = "#77D5A3",
  base0D = "#FD8DA3",
  base0E = "#FD8DA3",
  base0F = "#85CDF1",
}

M.polish_hl = {
  treesitter = {
    ["@keyword.import"] = { fg = M.base_30.purple },
    ["@variable.member.key"] = { fg = M.base_30.orange },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "IDX")

return M
