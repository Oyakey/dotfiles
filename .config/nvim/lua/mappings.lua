require "nvchad.mappings"

local map = vim.keymap.set

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

map("n", "<leader>G", "<cmd>term lazygit<cr>")

map("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })

map("n", "<leader>qa", "<cmd>qa<cr>")
map("n", "<leader>qA", "<cmd>qa!<cr>")

map("n", "<leader>tw", "<cmd>set list!<cr>")
