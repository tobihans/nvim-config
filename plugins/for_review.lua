return {
  {
    "chrisgrieser/nvim-puppeteer",
    enable = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false, -- plugin lazy-loads itself
  },
  {
    "Wansmer/symbol-usage.nvim",
    enable = false,
    event = "BufReadPre", -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
    config = function() require("symbol-usage").setup() end,
  },
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = false,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    -- version = '*', -- latest stable version, may have breaking changes if major version changed
    -- version = '^1.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function() require("kitty-scrollback").setup() end,
  },
}
