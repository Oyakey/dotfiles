require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.relativenumber = true
vim.opt.listchars = { space = "·", tab = "→ " }
vim.opt.tabstop = 4
vim.opt.backupcopy = "yes"
vim.opt.scrolloff = 4

require("luasnip.loaders.from_vscode").load_standalone {
  path = "~/Library/Application Support/Code/User/snippets/julien.code-snippets",
}
