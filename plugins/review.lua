-- A list of plugins that I want to review and decide if I want to keep them or not.
return {
  {
    "chrisgrieser/nvim-puppeteer",
    enabled = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false, -- plugin lazy-loads itself
  },
  {
    "Wansmer/symbol-usage.nvim",
    enabled = false,
    event = "BufReadPre", -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
    config = function() require("symbol-usage").setup() end,
  },
}
