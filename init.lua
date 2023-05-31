local config = {
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "main",       -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
  },
  colorscheme = "kanagawa",
  heirline = {
    separators = {
      tab = { "", "" },
    },
    attributes = {
      mode = { bold = true },
    },
  },
  lsp = {
    servers = {
      "dartls",
    },
    skip_setup = {
      "rust_analyzer",
      "dartls",
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          "lua",
        },
      },
      disabled = {},
      timeout_ms = 1500,
    },
    on_attach = function(client, bufnr)
      -- INFO: Solves DenoLS and TsServer conflict
      if require("lspconfig").util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd()) then
        if client.name == "tsserver" then
          client.stop()
          return
        end
      end
    end,
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
  },
}

return config
