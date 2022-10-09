return {
  n = {
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  t = {
    ["<esc>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["jk"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
  },
}
