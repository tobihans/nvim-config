return {
  n = {
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<leader>lI"] = { "<cmd>Mason<cr>", desc = "Mason" },
    ["<leader>bu"] = { "<cmd>DBUIToggle<cr>", desc = "DB UI Toggle" },
    ["<leader>bf"] = { "<cmd>DBUIFindBuffer<cr>", desc = "DB UI Find buffer" },
    ["<leader>br"] = { "<cmd>DBUIRenameBuffer<cr>", desc = "DB UI Rename buffer" },
    ["<leader>bl"] = { "<cmd>DBUILastQueryInfo<cr>", desc = "DB UI Last query infos" },
  },
  t = {
    ["<esc>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["jk"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
  },
}
