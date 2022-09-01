return {
  { 'mattn/emmet-vim' },
  { 'sainnhe/everforest' },
  { 'Pocco81/true-zen.nvim' },
  { 'folke/tokyonight.nvim' },
  { 'mg979/vim-visual-multi' },
  { 'KeitaNakamura/neodark.vim' },
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
  { 'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim' },
  { 'anuvyklack/fold-preview.nvim',
   requires = 'anuvyklack/keymap-amend.nvim',
   config = function()
      require('fold-preview').setup()
   end
  }
}

