local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

-- Setup keymaps (tjdevries)
-- vim.keymap.set({"i", "s"}, "<c-k>",
--     function()
--         if ls.expand_or_jumpable() then
--             expand_or_jump()
--         end
--     end,
--     { silent = true })


-- vim.keymap.set({"i", "s"}, "<c-k>", function() ls.jump(1) end, {silent = true})
-- vim.api.nvim_set_keymap("i", "<Leader><Leader>c", "<cmd>lua require'luasnip'.jump(1)<CR>", {silent = true})
-- vim.api.nvim_set_keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(1)<CR>", {silent = true})
vim.cmd([[
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]])

-- Add snippets
local s, i, t, f, c = ls.snippet, ls.insert_node, ls.text_node, ls.function_node, ls.choice_node

local datefn = function() return os.date('%b %Y') end

ls.add_snippets(nil, {
    all = {
        s({trig="da"}, f(datefn, {})),
        s({trig="best", namr="test", dscr="test"},
          fmt("expanding {} {}", {i(1), rep(1)}))
    },
})

