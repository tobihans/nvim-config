-- Extend LSP configuration

return {
  formatting = {
    format_on_save = {
      enabled = true,
      allow_filetypes = {
        "lua",
      },
      ignore_filetypes = {
        "rust",
        "python",
        "typescript",
        "javascript",
      },
    },
    disabled = {},
    timeout_ms = 1500, -- default format timeout
  },
  servers = {
    "dartls",
  },
  skip_setup = {
    "rust_analyzer",
  },
}
