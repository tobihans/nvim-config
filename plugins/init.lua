return {
  -- Utilities
  { "simrat39/rust-tools.nvim" },
  { "mattn/emmet-vim", lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "kylechui/nvim-surround", lazy = false },
  { "gpanders/editorconfig.nvim", lazy = false },
  { "Pocco81/true-zen.nvim", cmd = { "TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus" } },
  {
    "kkoomen/vim-doge",
    cmd = "DogeGenerate",
    build = ":call doge#install()",
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup() end,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "tpope/vim-dadbod", "tpope/vim-dotenv", "kristijanhusak/vim-dadbod-completion" },
    cmd = "DBUIToggle",
    priority = 40,
    config = function() require("astronvim.utils.lsp").add_user_cmp_source "vim-dadbod-completion" end,
  },
}
