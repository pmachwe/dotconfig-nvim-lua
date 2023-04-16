-- specific sub-directories to be ignored
local ts_get_ignore_pat = function()
    local pat = os.getenv("MY_TS_IGNORE_PAT")

    if (pat == nil) then
        return {}
    end

    return vim.split(pat, " ")
end

M = {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        version = false, -- telescope did only one release, so use HEAD for now
        keys = {
            { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
            { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
            -- find
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
            { "<leader>fe", "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Find Files (cwd)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
            { '<Leader>fi', "<cmd>lua require('telescope.builtin').find_files({cwd = '~/.config/nvim'})<CR>", desc = "Find Files Nvim Config" },
            -- git
            { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
            { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
            -- search
            { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
            { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
            { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
            { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
            { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
            { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
            { "<leader>se", "<cmd>lua require('telescope.builtin').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
            { "<leader>/", "<cmd>lua require('telescope.builtin').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
            { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
            { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
            { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
            { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
            { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
            { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
            { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
            { "<leader>r", "<cmd>Telescope resume<cr>", desc = "Resume" },
            { "<leader>t", "<cmd>Telescope treesitter<cr>", desc = "Treesitter symbols" },
            -- { "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
            -- { "<leader>sW", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
            -- { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
            -- {
            --     "<leader>ss",
            --     Util.telescope("lsp_document_symbols", {
            --         symbols = {
            --             "Class",
            --             "Function",
            --             "Method",
            --             "Constructor",
            --             "Interface",
            --             "Module",
            --             "Struct",
            --             "Trait",
            --             "Field",
            --             "Property",
            --         },
            --     }),
            --     desc = "Goto Symbol",
            -- },
            -- {
            --     "<leader>sS",
            --     Util.telescope("lsp_workspace_symbols", {
            --         symbols = {
            --             "Class",
            --             "Function",
            --             "Method",
            --             "Constructor",
            --             "Interface",
            --             "Module",
            --             "Struct",
            --             "Trait",
            --             "Field",
            --             "Property",
            --         },
            --     }),
            --     desc = "Goto Symbol (Workspace)",
            -- },
        },
        opts = {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                file_ignore_patterns = ts_get_ignore_pat(),
                mappings = {
                    -- i = {
                    --     ["<c-t>"] = function(...)
                    --         return require("trouble.providers.telescope").open_with_trouble(...)
                    --     end,
                    --     ["<a-t>"] = function(...)
                    --         return require("trouble.providers.telescope").open_selected_with_trouble(...)
                    --     end,
                    --     ["<a-i>"] = function()
                    --         Util.telescope("find_files", { no_ignore = true })()
                    --     end,
                    --     ["<a-h>"] = function()
                    --         Util.telescope("find_files", { hidden = true })()
                    --     end,
                    --     ["<C-Down>"] = function(...)
                    --         return require("telescope.actions").cycle_history_next(...)
                    --     end,
                    --     ["<C-Up>"] = function(...)
                    --         return require("telescope.actions").cycle_history_prev(...)
                    --     end,
                    --     ["<C-f>"] = function(...)
                    --         return require("telescope.actions").preview_scrolling_down(...)
                    --     end,
                    --     ["<C-b>"] = function(...)
                    --         return require("telescope.actions").preview_scrolling_up(...)
                    --     end,
                    -- },
                    i = {
                        ["<C-g>"] = function(...)
                            return require("telescope.actions").close(...)
                        end,
                        ["<C-u>"] = false,
                    },
                    n = {
                        ["q"] = function(...)
                            return require("telescope.actions").close(...)
                        end,
                    },
                },
            },
        },
    },

    -- Faster fuzzy impl in C
    { 
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require('telescope').load_extension('fzf')
        end,
    },
    -- P4 files
    {
        'Badhi/vim-p4-files',
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require('telescope').load_extension('vim_p4_files')
        end,
    },
    -- Yanked text
    {
        "AckslD/nvim-neoclip.lua",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension('neoclip')
        end,
    },
}

return M
