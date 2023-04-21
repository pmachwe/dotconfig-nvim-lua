local opts = { noremap = true, silent = true }

-- Telescope basics
vim.api.nvim_set_keymap("n", "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", {noremap = true, silent = true, desc = "Switch Buffer"})
vim.api.nvim_set_keymap("n", "<leader>:", "<cmd>Telescope command_history<cr>", {noremap = true, silent = true, desc = "Command History"})
-- find
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {noremap = true, silent = true, desc = "Buffers"})
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {noremap = true, silent = true, desc = "Find Files (root dir)"})
vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>Telescope find_files cwd=%:p:h<cr>", {noremap = true, silent = true, desc = "Find Files (cwd)"})
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {noremap = true, silent = true, desc = "Recent"})
vim.api.nvim_set_keymap("n", '<Leader>fi', "<cmd>Telescope find_files cwd=~/.config/nvim<CR>", {noremap = true, silent = true, desc = "Find Files Nvim Config"})
-- git
vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", {noremap = true, silent = true, desc = "commits"})
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", {noremap = true, silent = true, desc = "status"})
-- search
vim.api.nvim_set_keymap("n", "<leader>sa", "<cmd>Telescope autocommands<cr>", {noremap = true, silent = true, desc = "Auto Commands"})
vim.api.nvim_set_keymap("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", {noremap = true, silent = true, desc = "Buffer"})
vim.api.nvim_set_keymap("n", "<leader>sc", "<cmd>Telescope command_history<cr>", {noremap = true, silent = true, desc = "Command History"})
vim.api.nvim_set_keymap("n", "<leader>sC", "<cmd>Telescope commands<cr>", {noremap = true, silent = true, desc = "Commands"})
vim.api.nvim_set_keymap("n", "<leader>sd", "<cmd>Telescope diagnostics<cr>", {noremap = true, silent = true, desc = "Diagnostics"})
vim.api.nvim_set_keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", {noremap = true, silent = true, desc = "Grep (root dir)"})
vim.api.nvim_set_keymap("n", "<leader>se", "<cmd>Telescope live_grep cwd=%:p:h<cr>", {noremap = true, silent = true, desc = "Grep (cwd)"})
vim.api.nvim_set_keymap("n", "<leader>/",  "<cmd>Telescope live_grep cwd=%:p:h<cr>", {noremap = true, silent = true, desc = "Grep (cwd)"})
vim.api.nvim_set_keymap("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", {noremap = true, silent = true, desc = "Help Pages"})
vim.api.nvim_set_keymap("n", "<leader>sH", "<cmd>Telescope highlights<cr>", {noremap = true, silent = true, desc = "Search Highlight Groups"})
vim.api.nvim_set_keymap("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", {noremap = true, silent = true, desc = "Key Maps"})
vim.api.nvim_set_keymap("n", "<leader>sM", "<cmd>Telescope man_pages<cr>", {noremap = true, silent = true, desc = "Man Pages"})
vim.api.nvim_set_keymap("n", "<leader>sm", "<cmd>Telescope marks<cr>", {noremap = true, silent = true, desc = "Jump to Mark"})
vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>Telescope vim_options<cr>", {noremap = true, silent = true, desc = "Options"})
vim.api.nvim_set_keymap("n", "<leader>sR", "<cmd>Telescope resume<cr>", {noremap = true, silent = true, desc = "Resume"})
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>Telescope resume<cr>", {noremap = true, silent = true, desc = "Resume"})
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>Telescope treesitter<cr>", {noremap = true, silent = true, desc = "Treesitter symbols"})

-- Extension-specific
vim.api.nvim_set_keymap('n', '<Leader>fr', ":Telescope neoclip<CR>", {noremap = true, silent = true, desc = "Neoclip"})
vim.api.nvim_set_keymap('n', '<Leader>fp', ":Telescope vim_p4_files<CR>", {noremap = true, silent = true, desc = "P4 Files"})

-- Mappings for Tmux extension
vim.api.nvim_set_keymap('n', '<Leader>ftw', ":Telescope tmux windows<CR>", {noremap = true, silent = true, desc = "Tmux windows"})
vim.api.nvim_set_keymap('n', '<Leader>fts', ":Telescope tmux sessions<CR>", {noremap = true, silent = true, desc = "Tmuxx sessions"})
