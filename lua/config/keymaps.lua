local set = vim.keymap.set
-- jk keybind escapes out of insert mode -> normal mode
set("i", "jk", "<esc>", { desc = "Esc out of Insert" })
-- tmux navigation within neovim
set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "tmux:navigate left" })
set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "tmux:navigate right" })
set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "tmux:navigate down" })
set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "tmux:navigate up" })
-- show line diagnostics
set("n", "<leader>\\", "<cmd> lua vim.diagnostic.open_float()<cr>", { desc = "show line diagnostics" })
-- x keybind no longer adds deleted character to clipboard
set("n", "x", '"_x', { desc = "Delete char w/o clipboard" })
-- increment/decrement number in normal mode
set("n", "+", "<C-a>", { desc = "Increment number" })
set("n", "-", "<C-x>", { desc = "Decrement number" })
-- select all
set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

set("n", "<leader>fs", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
