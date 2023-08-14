-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 100,
    opts = {
      ensure_installed = {
        "ansiblels",
        "bashls",
        "clangd",
        "clangd",
        "cssls",
        "eslint",
        "gopls",
        "intelephense",
        "jdtls",
        "jsonls",
        "lua_ls",
        "marksman",
        "phpactor",
        "pyright",
        "ruff_lsp",
        "rust_analyzer",
        "taplo",
        "tsserver",
        "typst_lsp",
        "vimls",
        "volar",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "shellcheck",
        "shfmt",
        "clang_format",
        "protolint",
        "gomodifytags",
        "gofumpt",
        "iferr",
        "impl",
        "goimports",
      },
      handlers = {
        prettier = function()
          require("null-ls").register(require("null-ls").builtins.formatting.prettier.with {
            condition = function(utils)
              return utils.root_has_file "package.json"
                or utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
            end,
          })
        end,
      },
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
        "delve", -- go
      },
    },
  },
}
