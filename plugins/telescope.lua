return {
  "nvim-telescope/telescope.nvim",
  dependencies = {{"nvim-telescope/telescope-smart-history.nvim", dependencies = {"kkharji/sqlite.lua"}} },
  config = function(plugin, opts)
    local telescope = require "telescope"

    opts.defaults["history"] = {
      path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
      limit = 100,
    }

    require("plugins.configs.telescope")(plugin, opts)
    telescope.load_extension "smart_history"
  end,
}