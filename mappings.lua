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

    -- Gh integration by octo.nvim
    ["<leader>O"] = { name = "  Octo" },
    ["<leader>Oo"] = { "<cmd>Octo<cr>", desc = " Pick" },
    ["<leader>Oa"] = { "<cmd>Octo actions<cr>", desc = " Actions" },

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

    -- Overrides
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    -- NOTE: I wonder why this didn't work when placed in `plugins/telescope.lua`
    ["<leader>fw"] = {
      function() require("telescope").extensions.live_grep_args.live_grep_args() end,
      desc = "Find words",
    },
    ["<leader>th"] = {
      function() vim.cmd(vim.v.count .. "ToggleTerm size=10 direction=horizontal") end,
      desc = "ToggleTerm horizontal split",
    },
    ["<leader>tv"] = {
      function() vim.cmd(vim.v.count .. "ToggleTerm size=80 direction=vertical") end,
      desc = "ToggleTerm vertical split",
    },
    ["<leader>td"] = {
      function() require("astronvim.utils").toggle_term_cmd "lazydocker" end,
      desc = "ToggleTerm lazydocker",
    },
    ["<leader>tb"] = {
      function() require("astronvim.utils").toggle_term_cmd "btop" end,
      desc = "ToggleTerm btop",
    },
  },
  v = { ["<leader>f"] = { name = " Find" } },
  t = { ["<M-esc>"] = { "<C-\\><C-n>", desc = " Exit Terminal Mode" } },
}
