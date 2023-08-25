return {
  n = {
    -- Database Explorer
    ["<leader>D"] = { name = " Db Tools" },
    ["<leader>Du"] = { "<cmd>DBUIToggle<cr>", desc = " DB UI Toggle" },
    ["<leader>Df"] = { "<cmd>DBUIFindBuffer<cr>", desc = " DB UI Find buffer" },
    ["<leader>Dr"] = { "<cmd>DBUIRenameBuffer<cr>", desc = " DB UI Rename buffer" },
    ["<leader>Dl"] = { "<cmd>DBUILastQueryInfo<cr>", desc = " DB UI Last query infos" },

    -- Rust Tools
    ["<leader>R"] = { name = " Rust Tools" },
    ["<leader>Rx"] = { "<cmd>RustExpandMacro<cr>", desc = " Expand Macros Recursively" },
    ["<leader>Rj"] = { "<cmd>RustExpandMacro<cr>", desc = " Join Lines" },
    ["<leader>Rc"] = { "<cmd>RustOpenCargo<cr>", desc = " Open Cargo.toml" },
    ["<leader>Rg"] = { "<cmd>RustViewCrateGraph<cr>", desc = " View Crate Graph" },
    ["<leader>Rr"] = { "<cmd>RustRunnables<cr>", desc = " Runnables" },
    ["<leader>Rd"] = { "<cmd>RustDebuggables<cr>", desc = " Debuggables" },

    -- Flutter Tools
    ["<leader>F"] = { name = " Flutter Tools" },
    ["<leader>Fc"] = {
      function() require("telescope").extensions.flutter.commands() end,
      desc = "Flutter Commands",
    },
    ["<leader>Fs"] = {
      function() require("telescope").extensions.flutter.fvm() end,
      desc = "Flutter SDK",
    },

    -- Buffers
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- Misc
    ["<leader>x"] = { "<cmd>x<cr>", desc = " :x<cr>" },
  },
  t = {
    ["jk"] = { "<C-\\><C-n>", desc = " Exit Terminal Mode" },
  },
}
