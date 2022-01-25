local opts = { noremap = true, silent = true }
-- keymap("", "", "", opts)

local term_opts = { silent = true }
-- keymap("", "", "", term_opts)

local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- plugins
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fa", "<cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>:Telescope file_browser<cr>", opts)

-- personal
keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>", opts)
keymap("n", "<leader>fo", ":Format<cr>", opts)
keymap("n", "<leader>x", ":!chmod +x %<cr>", opts)
keymap("n", "<leader>ts", ":silent !tmux neww tmux-sessionizer<cr>", opts)
keymap("n", "Y", "y$", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "<leader>j", ":m .+1<cr>==", opts)
keymap("n", "<leader>k", ":m .-2<cr>==", opts)
keymap("i", "<C-j>", "<esc>:m .+1<cr>==i", opts)
keymap("i", "<C-k>", "<esc>:m .-2<cr>==i", opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
