return {
  { "AstroNvim/astrocommunity" },
  { "p00f/clangd_extensions.nvim" },
  { "mattn/emmet-vim", lazy = false },
  { "kaarmu/typst.vim", ft = "typst" },
  { "wakatime/vim-wakatime", lazy = false },
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
  { "tiagovla/scope.nvim", lazy = false, priority = 1500 },
  { "kevinhwang91/nvim-bqf", event = "VeryLazy", ft = "qf" },
  { "kylechui/nvim-surround", event = "VeryLazy", lazy = false, opts = {} },
  { "akinsho/git-conflict.nvim", version = "*", config = true, event = "User AstroGitFile" },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    cmd = "Refactor",
  },
  {
    "folke/drop.nvim",
    event = "VimEnter",
    opts = { max = 25, screensaver = false },
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    init = function()
      vim.g.undotree_WindowLayout = 3
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = { snippet_engine = "luasnip" },
    config = true,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
      vim.g.VM_default_mappings = 1
      vim.g.VM_mouse_mappings = 0

      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Select Cursor Down"] = "<M-C-Down>",
        ["Select Cursor Up"] = "<M-C-Up>",
        -- Enable undo/redo experimental feature
        ["Undo"] = "u",
        ["Redo"] = "<C-r>",
      }
    end,
  },
}
