require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "python", "bash", "lua", "rust" },
  disabled = { "perl", "markdown" },

  -- Automatically install missing parsers when entering buffer
  auto_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },

  indent = { enable = true, disable = { "python" } },
  context_commentstring = { enable = true, enable_autocmd = false },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = "<nop>",
      node_decremental = "<bs>",
    },
  },
}
