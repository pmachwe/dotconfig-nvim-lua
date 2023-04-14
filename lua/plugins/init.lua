return {

  -- LSP
  'neovim/nvim-lspconfig',
  {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  },
  'ray-x/lsp_signature.nvim',

  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- Faster fuzzy impl in C
  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  -- P4 files
  { 'Badhi/vim-p4-files' },

  -- Autocomplete
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'quangnguyen30192/cmp-nvim-tags',
  'ray-x/cmp-treesitter',
  'hrsh7th/cmp-nvim-lua',
  'prabirshrestha/vim-lsp',
  'dmitmel/cmp-vim-lsp',
  'hrsh7th/nvim-cmp',

  -- For luasnip users.
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- Colorscheme
  'EdenEast/nightfox.nvim',
  'overcache/NeoSolarized',
  { 'bluz71/vim-nightfly-colors', as = "nightfly" },
  'nordtheme/vim',

  -- Status line
  'hoob3rt/lualine.nvim',
  'kyazdani42/nvim-web-devicons',
  'ryanoasis/vim-devicons',

  -- General utilities
  {
    'ggandor/leap.nvim', -- sneak movement
    config = function()
      require('leap').set_default_keymaps()
    end
  },
  'jiangmiao/auto-pairs',
  -- 'tpope/vim-commentary',
  'machakann/vim-highlightedyank',
  'tpope/vim-dispatch',
  'junegunn/vim-peekaboo',
  'preservim/tagbar',
  'ngemily/vim-vp4',
  'christoomey/vim-tmux-navigator',
  -- 'voldikss/vim-floaterm',
  {
    'ethanholz/nvim-lastplace',
    config = function()
      require'nvim-lastplace'.setup {
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
        lastplace_open_folds = true
      }
    end
  },
  -- context-aware commenting
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  {
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {} end,
  },

  'tpope/vim-scriptease', -- :Message

  -- Experiments
  'norcalli/nvim-terminal.lua',
  'camgraff/telescope-tmux.nvim',
  'RRethy/vim-illuminate',
  {
    "AckslD/nvim-neoclip.lua",
    config = function() require('neoclip').setup() end,
  },
  {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  },

  {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    dependencies = 'kyazdani42/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup{}
    end
  },

  {
    'tjdevries/express_line.nvim',
    config = function()
      require("el").setup{}
    end
  },

  -- Upgrading to this from floaterm
  {
    "akinsho/toggleterm.nvim",
    tag = '*', config = function()
      require("toggleterm").setup()
    end
  },

}
