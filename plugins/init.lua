return {
  -- { 'delphinus/artify.nvim' },
  { 'Pocco81/true-zen.nvim' },
  { 'folke/tokyonight.nvim' },
  { 'rmolin88/pomodoro.vim' },
  { 'mg979/vim-visual-multi' },
  { 'mattn/emmet-vim' },
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  { 'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim' },
  {
    "kkoomen/vim-doge",
    run = ":call doge#install()",
    cmd = { "DogeGenerate", "DogeCreateDocStandard" },
    disable = false,
  }
}

