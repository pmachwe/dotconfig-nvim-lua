return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  }
  use 'ray-x/lsp_signature.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'p00f/nvim-ts-rainbow'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Faster fuzzy impl in C
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- P4 files
  use { 'Badhi/vim-p4-files' }

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'quangnguyen30192/cmp-nvim-tags'
  use 'ray-x/cmp-treesitter'
  use 'hrsh7th/cmp-nvim-lua'
  use 'prabirshrestha/vim-lsp'
  use 'dmitmel/cmp-vim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- For luasnip users.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Colorscheme
  use "EdenEast/nightfox.nvim"
  use "overcache/NeoSolarized"
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }

  -- Status line
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- General utilities
  use 'ggandor/leap.nvim' -- sneak movement
  use 'jiangmiao/auto-pairs'
  -- use 'tpope/vim-commentary'
  use 'machakann/vim-highlightedyank'
  use 'tpope/vim-dispatch'
  use 'junegunn/vim-peekaboo'
  use 'preservim/tagbar'
  use 'ngemily/vim-vp4'
  use 'christoomey/vim-tmux-navigator'
  -- use 'voldikss/vim-floaterm'
  use 'ethanholz/nvim-lastplace'
  -- context-aware commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {} end,
  }

  use 'tpope/vim-scriptease' -- :Message

  -- Experiments
  use 'norcalli/nvim-terminal.lua'
  use 'camgraff/telescope-tmux.nvim'
  use 'RRethy/vim-illuminate'
  use {
    "AckslD/nvim-neoclip.lua",
    config = function() require('neoclip').setup() end,
  }
  use {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use 'tjdevries/express_line.nvim'

  -- Upgrading to this from floaterm
  use {
    "akinsho/toggleterm.nvim",
    tag = '*', config = function()
      require("toggleterm").setup()
    end
  }

  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Packer
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        -- add any options here
        presets = {
          bottom_search = false, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  })
end)
