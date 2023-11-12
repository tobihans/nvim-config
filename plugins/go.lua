return {
  {
    "olexsmir/gopher.nvim",
    cmd = {
      "GoTagAdd",
      "GoTagRm",
      "GoMod",
      "GoGet",
      "GoImpl",
      "GoTestAdd",
      "GoTestsAll",
      "GoTestsExp",
      "GoGenerate",
      "GoCmt",
      "GoIfErr",
    },
    opts = {
      commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests",
        impl = "impl",
        iferr = "iferr",
      },
      goimport = "gopls",
      gofmt = "gopls",
    },
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      "jay-babu/mason-nvim-dap.nvim",
    },
    opts = {},
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
      "theHamsta/nvim-dap-virtual-text",
    },
    opts = {},
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },
}
