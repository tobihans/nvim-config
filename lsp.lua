-- Extend LSP configuration
return {
  servers = {
    "dartls",
  },
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
  config = {
    dartls = function(opts)
      opts.color.enabled = true
      opts.settings.showTodos = false
      opts.settings.completeFunctionCalls = true
      opts.root_dir = require("lspconfig.util").root_pattern("pubspec.yml", "pubspec.yaml")

      return opts
    end,
    denols = function(opts)
      opts.root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc")
      return opts
    end,
    tsserver = function(opts)
      opts.root_dir = require("lspconfig.util").root_pattern "package.json"
      return opts
    end,
    eslint = function(opts)
      opts.root_dir = require("lspconfig.util").root_pattern("package.json", ".eslintrc.json", ".eslintrc.js")
      return opts
    end,
    jdtls = function()
      -- use this function notation to build some variables
      local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
      local root_dir = require("jdtls.setup").find_root(root_markers)

      -- calculate workspace dir
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
      local workspace_dir = vim.fn.stdpath "data" .. "/site/java/workspace-root/" .. project_name
      os.execute("mkdir " .. workspace_dir)

      -- get the mason install path
      local install_path = require("mason-registry").get_package("jdtls"):get_install_path()

      -- get the current OS
      local os
      if vim.fn.has "macunix" then
        os = "mac"
      elseif vim.fn.has "win32" then
        os = "win"
      else
        os = "linux"
      end

      -- return the server config
      return {
        cmd = {
          "java",
          "-Declipse.application=org.eclipse.jdt.ls.core.id1",
          "-Dosgi.bundles.defaultStartLevel=4",
          "-Declipse.product=org.eclipse.jdt.ls.core.product",
          "-Dlog.protocol=true",
          "-Dlog.level=ALL",
          "-javaagent:" .. install_path .. "/lombok.jar",
          "-Xms1g",
          "--add-modules=ALL-SYSTEM",
          "--add-opens",
          "java.base/java.util=ALL-UNNAMED",
          "--add-opens",
          "java.base/java.lang=ALL-UNNAMED",
          "-jar",
          vim.fn.glob(install_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
          "-configuration",
          install_path .. "/config_" .. os,
          "-data",
          workspace_dir,
        },
        root_dir = root_dir,
      }
    end,
  },
  setup_handlers = {
    rust_analyzer = function(_, opts)
      require("rust-tools").setup {
        server = opts,
      }
    end,
    dartls = function(_, opts)
      require("telescope").load_extension "flutter"
      require("flutter-tools").setup { lsp = opts }
    end,
    jdtls = function(_, opts)
      vim.api.nvim_create_autocmd("Filetype", {
        pattern = "java", -- autocmd to start jdtls
        callback = function()
          if opts.root_dir and opts.root_dir ~= "" then require("jdtls").start_or_attach(opts) end
        end,
      })
    end,
  },
}
