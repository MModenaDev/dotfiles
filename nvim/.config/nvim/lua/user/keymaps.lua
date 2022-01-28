local opts = { noremap = true, silent = true }
-- keymap("", "", "", opts)

local tmux_opts = { silent = true }
-- keymap("", "", "", 

local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   tmux_mode = "t",
--   command_mode = "c",

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- plugins
keymap("n", "<leader>ff", "<cmd>:lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fa", "<cmd>:lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
keymap("n", "<leader>fv", "<cmd>:lua require('user.telescope').search_vim()<cr>", opts)
keymap("n", "<leader>fd", "<cmd>:lua require('user.telescope').search_dotfiles()<cr>", opts)
keymap("n", "<leader>fr", "<cmd>:lua require('user.telescope').refactors()<cr>", opts)
keymap("n", "<leader>fg", "<cmd>:lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>:Telescope file_browser<cr>", opts)

keymap("n", "<leader>df", "<cmd>:lua require('refactoring').debug.printf({below = false})<cr>", opts)
keymap("n", "<leader>df", "<cmd>:lua require('refactoring').debug.printf({below = true})<cr>", opts)
keymap("n", "<leader>dc", "<cmd>:lua require('refactoring').debug.cleanup({})<cr>", opts)
keymap("n", "<leader>rr", "<cmd>:lua require('telescope').extensions.refactoring.refactors()<cr>", opts)
keymap("v", "<leader>rr", "<Esc><cmd>:lua require('telescope').extensions.refactoring.refactors()<cr>", opts)

keymap("n", "<leader>a", ":lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>tc", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<cr>", opts)

keymap("n", "<leader>q", ":lua require('harpoon.ui').nav_file(4)<cr>", opts)
keymap("n", "<leader>w", ":lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<leader>e", ":lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<leader>r", ":lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>tr", ":lua require('harpoon.tmux').gotoTerminal(1)<cr>", opts)
keymap("n", "<leader>te", ":lua require('harpoon.tmux').gotoTerminal(2)<cr>", opts)
keymap("n", "<leader>cr", ":lua require('harpoon.tmux').sendCommand(1, 1)<cr>", opts)
keymap("n", "<leader>ce", ":lua require('harpoon.tmux').sendCommand(1, 2)<cr>", opts)

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
