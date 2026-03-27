local set = vim.keymap.set
-- jk keybind escapes out of insert mode -> normal mode
set("i", "jk", "<esc>", { desc = "Esc out of Insert" })
-- show line diagnostics
set("n", "<leader>\\", "<cmd> lua vim.diagnostic.open_float()<cr>", { desc = "show line diagnostics" })
-- x keybind no longer adds deleted character to clipboard
set("n", "x", '"_x', { desc = "Delete char w/o clipboard" })
-- increment/decrement number in normal mode
set("n", "+", "<C-a>", { desc = "Increment number" })
set("n", "-", "<C-x>", { desc = "Decrement number" })
-- select all
set("n", "<leader>sa", "gg<S-v>G", { desc = "Select all" })

set("n", "<leader>fs", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
