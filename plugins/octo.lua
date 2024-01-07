return {
  {
    "pwntester/octo.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "Octo",
    init = function()
      require("which-key").register {
        ["<leader>O"] = {
          o = { "<cmd>Octo<cr>", desc = " Pick" },
          a = { "<cmd>Octo actions<cr>", desc = " Actions" },
        },
      }
    end,
    config = true,
    opts = {
      enable_builtin = true,
    },
  },
}
