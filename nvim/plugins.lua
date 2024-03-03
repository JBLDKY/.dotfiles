local lazy = require('lazy')

lazy.load {
  'ggandor/leap.nvim',
  config = function()
    local leap = require("leap")
    leap.add_default_mappings(true)
    vim.keymap.del({ "x", "o" }, "x")
    vim.keymap.del({ "x", "o" }, "X")
  end,
  keys = {"s", "S", "gs"}
}

-- Other plugins...
lazy.load 'mg979/vim-visual-multi'
lazy.load 'folke/tokyonight.nvim'
-- Continue with other plugins as needed

