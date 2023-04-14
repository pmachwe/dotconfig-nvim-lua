
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ","
vim.g.maplocalleader = ","

require('lazy').setup('plugins')
-- require('user.plugins')
-- require('user.plugins.settings')
require('user.settings')
require('user.nvim-cmp')
require('user.themes.nightfox')
require('user.lsp')
require('user.lsp.lspsaga')
require('user.treesitter')
require('user.treesitter.context')
require('user.treesitter.rainbow')
-- require('user.plugins.lualine')
require('user.mappings')
require('user.telescope')
require('user.telescope.mappings')

-- Set theme
require('user.functions').set_theme()

-- Some local configuration
vim.cmd("runtime local.vim")
vim.cmd("runtime local.lua")
