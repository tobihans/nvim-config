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
        ["<leader>Oo"] = { "<cmd>Octo<cr>", " Pick" },
        ["<leader>Oa"] = { "<cmd>Octo actions<cr>", " Actions" },
      }
    end,
    config = true,
    opts = {
      enable_builtin = true,
    },
  },
}
