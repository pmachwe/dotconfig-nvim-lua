return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v2.x",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {"<leader>ft", "<cmd> Neotree toggle<cr>", desc = "Neotree"},
    },
    config = {
        filesystem = {
            follow_current_file = true,
            hijack_netrw_behavior = "open_current",
        },
    },
}
