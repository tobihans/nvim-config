-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 100,
    opts = {
      ensure_installed = {
        "lua_ls",
        "bashls",
        "denols",
        "jdtls",
        "jsonls",
        "rust_analyzer",
        "clangd",
        "intelephense",
        "yamlls",
        "volar",
        "tsserver",
        "pyright",
        "marksman",
        "cssls",
        "taplo",
        "clangd",
        "ruff_lsp",
        "phpactor",
        "psalm",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettier", "stylua", "black", "isort", "shellcheck", "shfmt", "clang_format" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "php",
        "python",
        "codelldb",
        "java-debug-adapter",
        "java-test",
      },
    },
  },
}
