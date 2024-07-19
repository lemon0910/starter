local cmp = require("cmp")

return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      completion = {
        completeopt = "menu,menuone,noselect",
      },
      mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      },
    },
  },
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
    config = function()
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}
