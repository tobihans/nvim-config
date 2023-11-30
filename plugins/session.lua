return {
  {
    "stevearc/resession.nvim",
    enabled = true,
    opts = function(_, opts)
      opts.extensions = {
        astronvim = {},
        quickfix = {},
        scope = {},
        aerial = {},
        overseer = {
          unique = true,
          recent_first = true,
        },
      }
    end,
  },
}
