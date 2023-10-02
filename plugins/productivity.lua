return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
    enabled = function()
      if os.getenv "NVIM_UNATTENDED_INSTALLATION" ~= nil then
        return false
      else
        return true
      end
    end,
  },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = {
        "NvimTree",
        "aerial",
        "dbout",
        "dbui",
        "help",
        "lazy",
        "mason",
        "neo-tree",
        "neo-tree-popup",
        "netrw",
        "noice",
        "oil",
        "qf",
        "toggleterm",
      },
    },
    event = "BufEnter",
  },
}
