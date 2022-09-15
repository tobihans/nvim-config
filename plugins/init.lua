return {
  -- Utilities
  { "mattn/emmet-vim" },
  { "mg979/vim-visual-multi" },
  -- { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  -- { 'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim' },
  -- { 'Pocco81/true-zen.nvim' },
  {
    "anuvyklack/fold-preview.nvim",
    requires = "anuvyklack/keymap-amend.nvim",
    config = function() require("fold-preview").setup() end,
  },
  -- Themes
  -- { 'sainnhe/everforest' },
  -- { "shaunsingh/solarized.nvim" },
  -- { 'sainnhe/edge' },
  -- { "folke/tokyonight.nvim" },
  { "EdenEast/nightfox.nvim", run = ":NightfoxCompile" },
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
