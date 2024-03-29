return {
  {
    "williamboman/mason.nvim",
    priority = 200,
    opts = {
      ui = {
        border = "double",
        width = 0.8,
        height = 0.8,
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 100,
    opts = {
      ensure_installed = {
        "ansiblels",
        "bashls",
        "clangd",
        "cssls",
        "denols",
        "docker_compose_language_service",
        "dockerls",
        "eslint",
        "gopls",
        "graphql",
        "html",
        "intelephense",
        "jdtls",
        "jsonls",
        "kotlin_language_server",
        "lua_ls",
        "marksman",
        "phpactor",
        "prismals",
        "pyright",
        "ruff_lsp",
        "rust_analyzer",
        "taplo",
        "tsserver",
        "typst_lsp",
        "unocss",
        "vimls",
        "volar",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "clang_format",
        "gofumpt",
        "goimports",
        "gomodifytags",
        "iferr",
        "impl",
        "djlint",
        "ktlint",
        "prettier",
        "protolint",
        "shellcheck",
        "shfmt",
        "stylua",
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
        deno_fmt = function()
          require("null-ls").register(require("null-ls").builtins.formatting.deno_fmt.with {
            condition = function(utils) return utils.root_has_file "deno.json" or utils.root_has_file "deno.jsonc" end,
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
        "codelldb",
        "delve", -- go
        "java-debug-adapter",
        "java-test",
        "kotlin",
        "php",
        "python",
      },
    },
  },
}
