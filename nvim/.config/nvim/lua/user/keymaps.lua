local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)

keymap("n", "<leader>fo", ":Format<cr>", opts)
keymap("n", "<leader>x", ":!chmod +x %<cr>", opts)
keymap("n", "<leader>ts", ":silent !tmux neww tmux-sessionizer<cr>", opts)
