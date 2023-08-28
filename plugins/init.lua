return {
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  { "akinsho/flutter-tools.nvim" },
  { "p00f/clangd_extensions.nvim" },
  { "mattn/emmet-vim", lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "kylechui/nvim-surround", lazy = false },
  { "tiagovla/scope.nvim", lazy = false, priority = 1500 },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = {
        "qf",
        "netrw",
        "NvimTree",
        "lazy",
        "mason",
        "oil",
        "neo-tree",
        "aerial",
        "dbui",
        "help",
        "noice",
      },
    },
    event = "User AstroFile",
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
    dependencies = { "tpope/vim-dadbod", "tpope/vim-dotenv", "kristijanhusak/vim-dadbod-completion" },
    cmd = "DBUIToggle",
    init = function() vim.g.db_ui_winwidth = 28 end,
    config = function() require("cmp").setup.global { sources = { { name = "vim-dadbod-completion" } } } end,
  },
}
