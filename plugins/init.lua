return {
  -- Utilities
  { "mattn/emmet-vim" },
  { "mg979/vim-visual-multi" },
  { "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
  { "kosayoda/nvim-lightbulb", requires = "antoinemadec/FixCursorHold.nvim" },
  { "Pocco81/auto-save.nvim", config = function() require("auto-save").setup {} end },
  {
    "anuvyklack/fold-preview.nvim",
    requires = "anuvyklack/keymap-amend.nvim",
    config = function() require("fold-preview").setup() end,
  },
  {
    "kkoomen/vim-doge",
    run = ":call doge#install()",
  },
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
