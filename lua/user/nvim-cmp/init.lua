vim.api.nvim_set_option("completeopt", "menu,menuone,noselect,longest")

local cmp = require('cmp')
local cmp_buffer = require('cmp_buffer')

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    -- ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
    -- Taken this from tjdevries' config
    -- The following 2 lines would insert the selected item
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<c-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),

    ["<c-space>"] = cmp.mapping {
      i = cmp.mapping.complete(),
      c = function(
        _ --[[fallback]]
      )
        if cmp.visible() then
          if not cmp.confirm { select = true } then
            return
          end
        else
          cmp.complete()
        end
      end,
    },
  },
  sources = cmp.config.sources(
  {
    { name = 'buffer', keyword_length = 4, max_item_count=4},
    { name = 'tags', keyword_length=4, max_item_count=4 },
  },
  {
    { name = 'treesitter', keyword_length=4, max_item_count=4  },
    { name = 'nvim_lsp', keyword_length=4},
    { name = 'luasnip', keyword_length=4, max_item_count=4 },
    { name = 'vim_lsp', keyword_length=4, max_item_count=4 },
    { name = 'nvim_lua', keyword_length=4, max_item_count=4 }
  }),
  sorting = {
    comparators = {
      function(...) return cmp_buffer:compare_locality(...) end,
      -- The rest of your comparators...
    }
  },
  experimental = {
    native_menu = false,
    ghost_text = true
  }
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

