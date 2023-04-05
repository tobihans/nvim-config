-- Extend LSP configuration
return {
  setup_handlers = {
    rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
  },
}
