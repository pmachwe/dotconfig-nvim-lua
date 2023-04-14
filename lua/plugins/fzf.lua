return {
    "junegunn/fzf.vim",
    enabled = false,
    dependencies = { "junegunn/fzf", build = "fzf#install()", },
    keys = {
        {"<leader>ff", ":Files <cr>", desc = "FZF Find File"},
        {"<leader><leader>", ":Buffers <cr>", desc = "FZF Buffers"},
        {"<leader>fe", ":Files  %:p:h <cr>", desc = "FZF File CWD"},
        {"<leader>fg", ":Rg %:p:h <cr>", desc = "FZF RG CWD"},
        {"<leader>fG", ":Rg <cr>", desc = "FZF RG"},
        {"<leader>fH", ":Helptags <cr>", desc = "FZF Help"},
        {"<leader>fh", ":History <cr>", desc = "FZF Command History"},
        {"<leader>/", ":BLines <cr>", desc = "FZF Blines"},
        {"<leader>?", ":History/ <cr>", desc = "FZF Search History"},
        {"<leader>t", ":BTags <cr>", desc = "FZF Tags"},
    },
}
