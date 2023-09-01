-- Basic mappings

local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>w', ':update<CR>', opts)
vim.api.nvim_set_keymap('i', '<Leader>w', '<Esc>:update<CR>', opts)
vim.api.nvim_set_keymap('i', '<Leader>z', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>q', ':quit<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader><Leader>s', ':source %<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader><Leader>i', ':edit ~/.config/nvim/init.lua<CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>.', ':b#<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>k', ':bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>o', ':only<CR>', opts)

vim.api.nvim_set_keymap('n', 'U', '<C-u>', opts)
vim.api.nvim_set_keymap('n', 'D', '<C-d>', opts)

vim.api.nvim_set_keymap('', '<A-l>', '<C-w>l', opts)
vim.api.nvim_set_keymap('', '<A-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('', '<A-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('', '<A-h>', '<C-w>h', opts)

-- Perforce
vim.api.nvim_set_keymap('n', "<Leader>pp", ":Vp4", opts)
vim.api.nvim_set_keymap('n', "<Leader>pe", ":Vp4Edit<CR>", opts)
vim.api.nvim_set_keymap('n', "<Leader>pa", ":Vp4Add<CR>", opts)
vim.api.nvim_set_keymap('n', "<Leader>pr", ":Vp4Revert<CR>", opts)
vim.api.nvim_set_keymap('n', "<Leader>pd", ":Vp4Describe ", opts)
vim.api.nvim_set_keymap('n', "<Leader>pc", ":Vp4Change", opts)
vim.api.nvim_set_keymap('n', "<Leader>pi", ":Vp4Info<CR>", opts)
vim.api.nvim_set_keymap('n', "<Leader>po", ":Vp4 opened<CR>", opts)
vim.api.nvim_set_keymap('n', "<Leader>ps", ":Vp4 sync<CR>", opts)

-- Tmux Navigator
vim.api.nvim_set_keymap('n', '<A-h>', ':TmuxNavigateLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-j>', ':TmuxNavigateDown<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-k>', ':TmuxNavigateUp<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-l>', ':TmuxNavigateRight<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-\\>', ':TmuxNavigatePrevious<CR>', opts)

-- Quickfix
vim.api.nvim_set_keymap('n', '<leader>qo', ':copen<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qc', ':cclose<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qn', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qp', ':cprevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ql', ':clast<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qf', ':cfirst<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qh', ':chistory<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-n>', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-p>', ':cprevious<CR>', opts)

-- ToggleTerm
vim.api.nvim_set_keymap('n', '\\t', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-\\><C-n>\\t', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- Git
vim.api.nvim_set_keymap('n', '<Leader>G', ':Git<CR>', opts)

-- Code runner
vim.api.nvim_set_keymap('n', '<Leader>R', ':RunCode<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>Rq', ':RunClose<CR>', opts)

-- Make
vim.api.nvim_set_keymap('n', '<Leader>m', ':Make<CR>', opts)
