return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false, -- I prefer to pay the cost upfront that when I need it
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    opts = {
      settings = {
        showTodos = false,
      },
      lsp = {
        on_attach = function(_, bufnr)
          require("which-key").register({
            ["<leader>F"] = {
              name = " Flutter Tools",
              c = { function() require("telescope").extensions.flutter.commands() end, "Flutter Commands" },
            },
          }, { buffer = bufnr })
        end,
      },
    },
    init = function() require("telescope").load_extension "flutter" end,
    config = true,
  },
}
