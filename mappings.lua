return {
  n = {
    -- Database Explorer
    ["<leader>bu"] = { "<cmd>DBUIToggle<cr>", desc = " DB UI Toggle" },
    ["<leader>bf"] = { "<cmd>DBUIFindBuffer<cr>", desc = " DB UI Find buffer" },
    ["<leader>br"] = { "<cmd>DBUIRenameBuffer<cr>", desc = " DB UI Rename buffer" },
    ["<leader>bl"] = { "<cmd>DBUILastQueryInfo<cr>", desc = " DB UI Last query infos" },
    -- Rust Tools
    ["<leader>rx"] = { "<cmd>RustExpandMacro<cr>", desc = " Expand Macros Recursively" },
    ["<leader>rj"] = { "<cmd>RustExpandMacro<cr>", desc = " Join Lines" },
    ["<leader>rc"] = { "<cmd>RustOpenCargo<cr>", desc = " Open Cargo.toml" },
    ["<leader>rg"] = { "<cmd>RustViewCrateGraph<cr>", desc = " View Crate Graph" },
    ["<leader>rr"] = { "<cmd>RustRunnables<cr>", desc = " Runnables" },
    ["<leader>rd"] = { "<cmd>RustDebuggables<cr>", desc = " Debuggables" },
  },
  t = {},
}
