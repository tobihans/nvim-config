local config = {
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "main", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
  },
  colorscheme = "rose-pine",
  heirline = {
    separators = {
      tab = { "", "" },
    },
    attributes = {
      mode = { bold = true },
    },
  },
  lsp = {
    setup_handlers = {
      dartls = function(_, opts) require("flutter-tools").setup { lsp = opts } end,
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
      clangd = function(_, opts) require("clangd_extensions").setup { server = opts } end,
    },
    on_attach = function(client, _)
      -- Disables clangd for protobuf files
      if client.name == "clangd" and vim.bo.filetype == "proto" then
        client.stop()
        return
      end
    end,
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          "lua",
        },
      },
      disabled = {},
      timeout_ms = 5000,
    },
    config = {
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
      dartls = {
        color = {
          enabled = false,
        },
        settings = {
          showTodos = false,
          completeFunctionCalls = false,
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
  },
}

return config
