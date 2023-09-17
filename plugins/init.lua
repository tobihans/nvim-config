return {
  { "akinsho/git-conflict.nvim", version = "*", config = true, event = "User AstroGitFile" },
  { "akinsho/flutter-tools.nvim" },
  { "p00f/clangd_extensions.nvim" },
  { "mattn/emmet-vim", lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "kylechui/nvim-surround", lazy = false },
  { "tiagovla/scope.nvim", lazy = false, priority = 1500 },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    cmd = "Refactor",
  },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = {
        "NvimTree",
        "aerial",
        "dbout",
        "dbui",
        "help",
        "lazy",
        "mason",
        "neo-tree",
        "neo-tree-popup",
        "netrw",
        "noice",
        "oil",
        "qf",
        "toggleterm",
      },
    },
    event = "BufEnter",
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
    enabled = function()
      if os.getenv "NVIM_UNATTENDED_INSTALLATION" ~= nil then
        return false
      else
        return true
      end
    end,
  },
  {
    "kkoomen/vim-doge",
    lazy = false,
    build = ":call doge#install()",
    init = function() vim.g.doge_enable_mappings = 0 end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
  },
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require("drop").setup {
        max = 25,
        screensaver = false,
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup {} end,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dotenv", lazy = true },
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_winwidth = 30
      vim.g.db_ui_show_help = 0
    end,
  },
}
