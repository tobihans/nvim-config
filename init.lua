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
  colorscheme = "nord",
  heirline = {
    separators = {
      -- https://github.com/ryanoasis/powerline-extra-symbols
      -- tab = { "\u{e0ba}", "\u{e0bc}" },
      tab = { "\u{e0b2}", "\u{e0b0}" },
    },
    attributes = {
      mode = { bold = true },
    },
  },
  lsp = {
    skip_setup = {
      "rust_analyzer",
    },
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
      cssls = {
        settings = {
          css = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
      tsserver = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern "package.json"
        opts.single_file_support = false
        return opts
      end,
      denols = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")
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
