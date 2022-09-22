local ts = require('telescope')

ts.load_extension('neoclip') -- Yanked text
ts.load_extension('fzf') -- Faster fuzzy written in C
ts.load_extension('vim_p4_files')

-- Telescope customization
local actions = require("telescope.actions")

-- Set the env variable on any dir for
-- specific sub-directories to be ignored
local ts_get_ignore_pat = function()
    local pat = os.getenv("MY_TS_IGNORE_PAT")

    if (pat == nil) then
        return {}
    end

    return vim.split(pat, " ")
end

require("telescope").setup {
    defaults = {
        file_ignore_patterns = ts_get_ignore_pat(),
        mappings = {
            i = {
                -- C-g to quit Telescope
                ["<C-g>"] = actions.close,
                -- Clear prompt
                ["<C-u>"] = false
            },
        },
    }
}

M = {}

-- Find Nvim config files
M.find_nvim_config = function()
    local opts = {}
    opts.prompt_title = "Nvim Config"
    opts.path_display = { "smart" }
    opts.cwd = "~/.config/nvim"
    require("telescope.builtin").find_files { opts }
end

return M

