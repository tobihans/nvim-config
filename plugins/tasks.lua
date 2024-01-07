return {
  {
    "stevearc/overseer.nvim",
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction",
      "OverseerClearCache",
    },
    opts = {
      strategy = {
        "toggleterm",
        use_shell = true,
        direction = "horizontal",
        quit_on_exit = "never",
      },
      templates = { "builtin" },
      task_list = {
        direction = "right",
      },
    },
    init = function()
      require("which-key").register {
        ["<leader>O"] = {
          r = { "<cmd>OverseerRun<CR>", desc = " Run Task" },
          t = { "<cmd>OverseerToggle<CR>", desc = " Toggle tasks" },
        },
      }
    end,
  },
}
