return {
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = {
        "NvimTree",
        "aerial",
        "dbout",
        "dbui",
        "help",
        "lazy",
        "mason",
        "neo-tree",
        "neo-tree-popup",
        "netrw",
        "noice",
        "oil",
        "qf",
        "toggleterm",
        "octo",
        -- Debugging
        "dapui_scopes",
        "dapui_breakpoints",
        "dapui_stacks",
        "dapui_watches",
        "dap-repl",
        "dapui_console",
      },
    },
    event = "BufEnter",
  },
}
