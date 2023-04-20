-- Extend LSP configuration

return {
  formatting = {
    format_on_save = {
      enabled = true,
      allow_filetypes = {
        "lua",
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
    "dartls",
  },
  config = {
    dartls = {
      color = {
        enabled = true,
      },
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
      },
    },
    tsserver = function(opts)
      opts.root_dir = require("lspconfig.util").root_pattern "package.json"
      return opts
    end,
    eslint = function(opts)
      opts.root_dir = require("lspconfig.util").root_pattern("package.json", ".eslintrc.json", ".eslintrc.js")
      return opts
    end,
  },
}
