return {
  -- Utilities
  { "mattn/emmet-vim" },
  { "mg979/vim-visual-multi" },
  { "kylechui/nvim-surround" },
  { "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
  { "kosayoda/nvim-lightbulb", requires = "antoinemadec/FixCursorHold.nvim" },
  {
    "kkoomen/vim-doge",
    run = ":call doge#install()",
  },
  {
    "anuvyklack/fold-preview.nvim",
    requires = "anuvyklack/keymap-amend.nvim",
    config = function() require("fold-preview").setup() end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup() end,
  },
  -- disable due to conflicts with which key
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  --   requires = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   }
  -- },
  -- {
  --   "phaazon/mind.nvim",
  --   branch = "v2.2",
  --   requires = { "nvim-lua/plenary.nvim" },
  --   config = function() require("mind").setup() end,
  -- },
  --
  -- { "Pocco81/auto-save.nvim", config = function() require("auto-save").setup() end },
  -- { "Pocco81/true-zen.nvim" },
  -- Themes
  { "sainnhe/sonokai" },
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
  -- { "shaunsingh/solarized.nvim" },
  -- { 'sainnhe/everforest' },
  -- { 'sainnhe/edge' },
  -- { "folke/tokyonight.nvim" },
  -- { "navarasu/onedark.nvim" },
  -- {
  --   "rose-pine/neovim",
  --   as = "rose-pine",
  --   tag = "v1.*",
  -- },
  -- { 'whatyouhide/vim-gotham' },
  -- { "arcticicestudio/nord-vim" },
  -- { 'KeitaNakamura/neodark.vim' },
}
