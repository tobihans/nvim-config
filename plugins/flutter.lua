return {
  {
    "akinsho/flutter-tools.nvim",
    ft = { "dart" },
    opts = {
      server = require("astronvim.utils.lsp").config "rust_analyzer",
    },
  },
}
