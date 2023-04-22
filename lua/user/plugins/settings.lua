-- Settings for simple plugins
require('leap').set_default_keymaps()

-- Setup for lastplace
require'nvim-lastplace'.setup {
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}

-- Setup comment.nvim
require('Comment').setup()

-- Setup bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

-- Setup express_line
require('el').setup {
  -- An example generator can be seen in `Setup`.
  -- A default one is supplied if you do not want to customize it.
  -- generator = function(win_id)
  --   ...
  -- end
}

-- Setup gitsigns
require('gitsigns').setup()

