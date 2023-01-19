return {
  -- Utilities
  { "mattn/emmet-vim" },
  { "mg979/vim-visual-multi" },
  { "kylechui/nvim-surround" },
  { "tiagovla/scope.nvim", before = "bufferline", config = function() require("scope").setup() end },
  {
    "kkoomen/vim-doge",
    run = ":call doge#install()",
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup() end,
  },
  {
    "phaazon/mind.nvim",
    branch = "v2.2",
    requires = { "nvim-lua/plenary.nvim" },
    config = function() require("mind").setup() end,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    requires = { "tpope/vim-dadbod", "tpope/vim-dotenv", "kristijanhusak/vim-dadbod-completion" },
    cmd = "DBUIToggle",
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "vim-dadbod-completion" end,
  },
  { "nvim-telescope/telescope-smart-history.nvim", requires = "kkharji/sqlite.lua" },
  { "Pocco81/true-zen.nvim" }, -- when reading code
  { "gpanders/editorconfig.nvim" },

  ------------------------------------------------------------------------------------------------
  -- Themes
  ------------------------------------------------------------------------------------------------
  { "arcticicestudio/nord-vim" },
  { 'sainnhe/edge' },
  { "shaunsingh/solarized.nvim" },
  -- {
  --   "rose-pine/neovim",
  --   as = "rose-pine",
  --   config = function() require("rose-pine").setup { dark_variant = "moon" } end,
  -- },
  -- { "sainnhe/sonokai" },
  -- { "Yazeed1s/oh-lucy.nvim" },
  -- {
  --   "catppuccin/nvim",
  --   as = "catppuccin",
  --   config = function()
  --     require("catppuccin").setup {
  --       dim_inactive = {
  --         enabled = false,
  --         shade = "dark",
  --         percentage = 0.15,
  --       },
  --     }
  --   end,
  -- },
  -- { "EdenEast/nightfox.nvim", run = ":NightfoxCompile" },
  -- { 'sainnhe/everforest' },
  -- { "folke/tokyonight.nvim" },
  -- { "navarasu/onedark.nvim" },
  -- { 'KeitaNakamura/neodark.vim' },
}
