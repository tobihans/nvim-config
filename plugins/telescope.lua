return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-smart-history.nvim",
      dependencies = { "kkharji/sqlite.lua" },
      build = function(_)
        if vim.fn.has "unix" then
          vim.cmd "!mkdir -p ~/.local/share/nvim/databases"
        elseif vim.fn.has "win32" then
          vim.cmd "!New-Item -ItemType Directory -Force -Path '~/AppData/Local/nvim-data/databases' -ErrorAction SilentlyContinue"
        end
      end,
    },
    { "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
  },
  config = function(plugin, opts)
    local telescope = require "telescope"
    local lga_actions = require "telescope-live-grep-args.actions"
    local path = ""

    if vim.fn.has("win32") then
      path = "~/AppData/Local/nvim-data/databases/telescope_history.sqlite3"
    else
      path = "~/.local/share/nvim/databases/telescope_history.sqlite3"
    end

    opts.defaults["history"] = {
      path = path,
      limit = 250,
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
