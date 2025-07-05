require "nvchad.mappings"

local map = vim.keymap.set

local completion_preview = require "supermaven-nvim.completion_preview"

map("n", "\\", ";", { desc = "remap repeat motion to \\" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>")
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>")
map("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>")
map("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<cr>")
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>")
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
map("n", "<leader>gas", "<cmd>Git add .<cr>")
map("n", "<leader>gau", "<cmd>Git reset .<cr>")
map("n", "<leader>gaR", "<cmd>Git reset --hard<cr>")

map("n", "<leader>G", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>lG", "<cmd>term lazygit<cr>")

map("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })

map("n", "<leader>qa", "<cmd>qa<cr>")
map("n", "<leader>qA", "<cmd>qa!<cr>")

map("n", "<leader>tw", "<cmd>set list!<cr>")

map("n", "<leader>ef", "<cmd>EslintFixAll<cr>")

-- Keyboard users
map("n", "<C-_>", function()
  require("menu").open "default"
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

map(
  "n",
  "<leader>ku",
  ":lua Close_saved_buffers()<CR>",
  { noremap = true, silent = true }
)

map(
  "n",
  "<leader>df",
  vim.diagnostic.open_float,
  { desc = "Open floating diagnostics" }
)

local isLspDiagnosticsVisible = true
map("n", "<leader>lx", function()
  isLspDiagnosticsVisible = not isLspDiagnosticsVisible
  vim.diagnostic.config {
    virtual_text = isLspDiagnosticsVisible,
    underline = isLspDiagnosticsVisible,
  }
end)

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })
-- local transparency_enabled = false
-- local ToggleTransparency()
--   vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})

-- map("i", "<S-Right>", completion_preview.on_accept_suggestion)
-- map("i", "<S-Down>", completion_preview.on_accept_suggestion_word)
