return {
  -- Utilities
  { "mattn/emmet-vim" },
  { "mg979/vim-visual-multi" },
  { "kylechui/nvim-surround" },
  { "nvim-telescope/telescope-smart-history.nvim", requires = "kkharji/sqlite.lua" },
  { "Pocco81/true-zen.nvim" },
  { "gpanders/editorconfig.nvim" },
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
    "kristijanhusak/vim-dadbod-ui",
    requires = { "tpope/vim-dadbod", "tpope/vim-dotenv", "kristijanhusak/vim-dadbod-completion" },
    cmd = "DBUIToggle",
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "vim-dadbod-completion" end,
  },
  {
    "simrat39/rust-tools.nvim",
    after = "mason-lspconfig.nvim",
    config = function()
      require("rust-tools").setup {
        server = astronvim.lsp.server_settings "rust_analyzer",
      }
    end,
  },
  ------------------------------------------------------------------------------------------------
  -- Themes
  ------------------------------------------------------------------------------------------------
  {
    "uloco/bluloco.nvim",
    requires = { "rktjmp/lush.nvim" },
    config = function()
      require("bluloco").setup {
        style = "auto",
        transparent = false,
        italics = true,
        terminal = true,
        guicursor = true,
      }
    end,
  },
  -- { 'frenzyexists/aquarium-vim' },
  -- {
  --   "rose-pine/neovim",
  --   as = "rose-pine",
  --   config = function() require("rose-pine").setup { dark_variant = "moon" } end,
  -- },
  -- { "uloco/bluloco.nvim", requires = {"rktjmp/lush.nvim"}},
  -- { "arcticicestudio/nord-vim" },
  -- { 'sainnhe/edge' },
  -- { "shaunsingh/solarized.nvim" },
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
