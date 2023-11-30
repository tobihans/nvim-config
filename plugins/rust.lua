return {
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    opts = function()
      local package_path = require("mason-registry").get_package("codelldb"):get_install_path()
      local codelldb_path = package_path .. "/codelldb"
      local liblldb_path = package_path .. "/extension/lldb/lib/liblldb"

      return {
        server = require("astronvim.utils.lsp").config "rust_analyzer",
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(
            codelldb_path,
            liblldb_path .. (vim.loop.os_uname().sysname == "Linux" and ".so" or ".dylib")
          ),
        },
      }
    end,
  },
  {
    "Saecki/crates.nvim",
    init = function()
      vim.api.nvim_create_autocmd("BufRead", {
        group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
        pattern = "Cargo.toml",
        callback = function()
          ---@diagnostic disable-next-line: missing-fields
          require("cmp").setup.buffer { sources = { { name = "crates", priority = 2000 } } }
          require "crates"
        end,
      })
    end,
    opts = {
      null_ls = {
        enabled = true,
        name = "crates",
      },
    },
  },
}
