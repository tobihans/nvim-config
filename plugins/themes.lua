return {
  { "projekt0n/github-nvim-theme", enabled = false },
  { "rafamadriz/neon", enabled = false },
  { "rebelot/kanagawa.nvim", enabled = false },
  { "savq/melange-nvim", enabled = false },
  { "ray-x/aurora", enabled = false },
  { "frenzyexists/aquarium-vim", enabled = false },
  { "EdenEast/nightfox.nvim", enabled = true, run = ":NightfoxCompile" },
  { "sainnhe/everforest", enabled = false },
  {
    "folke/tokyonight.nvim",
    enabled = true,
    config = {
      style = "night",
      sidebars = { "neo-tree", "qf", "help", "aerial" },
    },
  },
  { "navarasu/onedark.nvim", enabled = false },
  { "KeitaNakamura/neodark.vim", enabled = false },
  { "arcticicestudio/nord-vim", enabled = false },
  { "sainnhe/edge", enabled = false },
  { "shaunsingh/solarized.nvim", enabled = false },
  { "sainnhe/sonokai", enabled = false },
  { "Yazeed1s/oh-lucy.nvim", enabled = false },
  { "felipeagc/fleet-theme-nvim", enabled = false },
  { "nyoom-engineering/oxocarbon.nvim", enabled = false },
  { "olimorris/onedarkpro.nvim", priority = 1000 },
  {
    "rose-pine/neovim",
    enabled = false,
    as = "rose-pine",
    config = function() require("rose-pine").setup { dark_variant = "moon" } end,
  },
  {
    "rmehri01/onenord.nvim",
    enabled = false,
    config = function()
      require("onenord").setup {
        fade_nc = true,
      }
    end,
  },
  {
    "catppuccin/nvim",
    enabled = false,
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
      }
    end,
  },
  {
    "uloco/bluloco.nvim",
    enabled = false,
    lazy = false,
    priority = 1500,
    dependencies = { "rktjmp/lush.nvim" },
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
}
