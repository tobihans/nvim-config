return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  config = true,
  event = "VeryLazy",
  keys = { {
    "<leader>ps",
    "<cmd>:VenvSelect<cr>",
    desc = "Pick Python Interpreter",
  } },
}
