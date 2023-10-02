return {
  {
    "akinsho/flutter-tools.nvim",
    ft="dart",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    opts = {
      settings = {
        showTodos = false,
      },
      lsp = {
        on_attach = function(client, _) vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc ="Hover symbol details" }) end,
      },
    },
    config = true,
  },
}
