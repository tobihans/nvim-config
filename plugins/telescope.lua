return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-smart-history.nvim", dependencies = { "kkharji/sqlite.lua" } },
    { "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
  },
  keys = {
    {
      "<leader>fg",
      function() require("telescope-live-grep-args.shortcuts").grep_word_under_cursor() end,
      desc = "Find word under cursor",
    },
    {
      "<leader>fv",
      function() require("telescope-live-grep-args.shortcuts").grep_visual_selection() end,
      mode = "v",
      desc = "Find visual selection",
    },
  },
  config = function(plugin, opts)
    local telescope = require "telescope"
    local lga_actions = require "telescope-live-grep-args.actions"

    opts.defaults["history"] = {
      path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
      limit = 100,
    }

    opts["extensions"] = {
      live_grep_args = {
        auto_quoting = true,
        mappings = {
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt { postfix = " --iglob " },
            ["<C-l>"] = lga_actions.quote_prompt { postfix = " -t" },
          },
        },
      },
    }

    require "plugins.configs.telescope"(plugin, opts)
    telescope.load_extension "smart_history"
    telescope.load_extension "live_grep_args"
  end,
}
