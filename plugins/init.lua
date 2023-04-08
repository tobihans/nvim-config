return {
  { "mattn/emmet-vim",        lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "kylechui/nvim-surround", lazy = false },
  { "Pocco81/true-zen.nvim",  cmd = { "TZAtaraxis", "TZMinimalist", "TZNarrow", "TZFocus" } },
  {
    "kkoomen/vim-doge",
    cmd = "DogeGenerate",
    build = ":call doge#install()",
    init = function() vim.g.doge_enable_mappings = 0 end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "tpope/vim-dadbod", "tpope/vim-dotenv", "kristijanhusak/vim-dadbod-completion" },
    cmd = "DBUIToggle",
    init = function() vim.g.db_ui_winwidth = 28 end,
    config = function() require("astronvim.utils.lsp").add_user_cmp_source "vim-dadbod-completion" end,
  },
}
