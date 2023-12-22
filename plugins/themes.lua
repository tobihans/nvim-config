return {
  { "rebelot/kanagawa.nvim", lazy = false, enabled = true, priority = 1000 },
  {
    "sainnhe/everforest",
    lazy = false,
    enabled = true,
    priority = 1500,
    init = function()
      vim.g.everforest_better_performance = 1
      vim.g.everforest_background = "medium"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_dim_inactive_windows = 0
    end,
  },
  -- { "morhetz/gruvbox", lazy = false, priority = 1000 },
  -- { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = true,
  -- },
  -- {
  --   "mhartington/oceanic-next",
  --   init = function()
  --     vim.g.oceanic_next_terminal_bold = 1
  --     vim.g.oceanic_next_terminal_italic = 1
  --   end,
  -- },
  -- {
  --   "shaunsingh/moonlight.nvim",
  --   init = function()
  --     vim.g.moonlight_italic_comments = true
  --     vim.g.moonlight_italic_keywords = true
  --     vim.g.moonlight_italic_functions = true
  --     vim.g.moonlight_italic_variables = false
  --     vim.g.moonlight_contrast = true
  --     vim.g.moonlight_borders = false
  --     vim.g.moonlight_disable_background = false
  --   end,
  --   config = function() require("moonlight").set() end,
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   opts = { dark_variant = "moon", bold_vert_split = false },
  -- },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --
  --   bold_keywords = true,
  --   italic_comments = true,
  --   transparent_bg = false,
  --   bright_border = true,
  --   reduced_blue = true,
  --   cursorline = {
  --       bold = false,
  --       bold_number = true,
  --       theme = 'dark',
  --       blend = 0.7,
  --   },
  --   noice = {
  --       style = 'flat',
  --   },
  --   telescope = {
  --       style = 'flat',
  --   },
  --   leap = {
  --       -- Dims the backdrop when using leap.
  --       dim_backdrop = false,
  --   },
  --   ts_context = {
  --       -- Enables dark background for treesitter-context window
  --       dark_background = true,
  --   }
  --   },
  --   config = true,
  -- },
  -- { "nyoom-engineering/oxocarbon.nvim" },
  -- { "savq/melange-nvim", lazy = false, priority = 1000 },
  -- {
  --   "folke/tokyonight.nvim",
  --   enabled = false,
  --   opts = {
  --     style = "night",
  --     sidebars = {},
  --   },
  -- },
  -- { "rafamadriz/neon", enabled = false },
  -- { "savq/melange-nvim", enabled = false },
  -- { "ray-x/aurora", enabled = false },
  -- { "EdenEast/nightfox.nvim", enabled = true, build = ":NightfoxCompile" },
  -- { "sainnhe/gruvbox-material", enabled = false },
  -- { "navarasu/onedark.nvim", enabled = false },
  -- { "KeitaNakamura/neodark.vim", enabled = false },
  -- { "arcticicestudio/nord-vim", enabled = false },
  -- { "sainnhe/edge", enabled = false },
  -- { "shaunsingh/solarized.nvim", enabled = false },
  -- { "sainnhe/sonokai", enabled = false },
  -- { "Yazeed1s/oh-lucy.nvim", enabled = false },
  -- { "felipeagc/fleet-theme-nvim", enabled = false },
  -- { "olimorris/onedarkpro.nvim", priority = 1000 },
  -- {
  --   "rmehri01/onenord.nvim",
  --   enabled = false,
  --   config = function()
  --     require("onenord").setup {
  --       fade_nc = true,
  --     }
  --   end,
  -- },
  -- {
  --   "catppuccin/nvim",
  --   enabled = false,
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
  -- {
  --   "uloco/bluloco.nvim",
  --   enabled = false,
  --   lazy = false,
  --   priority = 1500,
  --   dependencies = { "rktjmp/lush.nvim" },
  --   config = function()
  --     require("bluloco").setup {
  --       style = "auto",
  --       transparent = false,
  --       italics = true,
  --       terminal = true,
  --       guicursor = true,
  --     }
  --   end,
  -- },
}
