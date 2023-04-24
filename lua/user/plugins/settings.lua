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

-- Setup noice for newer UI
require("noice").setup({
    -- add any options here
    presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
    },

    messages = {
        enabled = false,
    },

    notify = {
        enabled = false,
    },

    lsp = {
        signature = {
            enabled = false,
        },
        hover = {
            enabled = false,
        },
        progress = {
            enabled = false,
        },
        message = {
            enabled = false,
        },
    },
})

require("notify").setup({
  background_colour = "#000000",
})

-- Code runner
require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python3 -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir$fileNameWithoutExt"
    },
  },
})
