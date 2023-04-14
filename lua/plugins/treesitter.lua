return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false, -- last release is way too old and doesn't work on Windows
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true, disable = { "python" } },
            context_commentstring = { enable = true, enable_autocmd = false },
            ensure_installed = {
                "bash",
                "c",
                "html",
                "json",
                "lua",
                "luap",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "vim",
                "perl",
            },
            disable = {
                "perl"
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = "<nop>",
                    node_decremental = "<bs>",
                },
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    {
        'p00f/nvim-ts-rainbow',
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            opts = {
                rainbow = {
                    enable = true,
                    extended_mode = true, -- Also highlight html tags etc
                    max_file_lines = nil, -- nil for no limit
                    -- disable = { "jsx", "cpp" }, 
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                },
            }
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    {
        'nvim-treesitter/nvim-treesitter-context',
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require('user.treesitter.context')
        end,
    },
}

