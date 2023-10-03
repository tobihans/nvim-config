return {
  { "p00f/clangd_extensions.nvim" },
  { "mattn/emmet-vim", lazy = false },
  { "kaarmu/typst.vim", ft = "typst" },
  { "wakatime/vim-wakatime", lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "kylechui/nvim-surround", lazy = false },
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
  { "tiagovla/scope.nvim", lazy = false, priority = 1500 },
  { "akinsho/git-conflict.nvim", version = "*", config = true, event = "User AstroGitFile" },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    cmd = "Refactor",
  },
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function() require("drop").setup { max = 25, screensaver = false } end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup {} end,
  },
  {
    "kkoomen/vim-doge",
    lazy = false,
    build = ":call doge#install()",
    init = function() vim.g.doge_enable_mappings = 0 end,
  },
}
