return {
  {
    "stevearc/resession.nvim",
    enabled = true,
    opts = function(_, opts)
      opts.extensions = {
        quickfix = {},
        scope = {},
        aerial = {},
        -- overseer = {
        --   unique = true,
        -- },
        table.unpack(opts.extensions or {}), -- should come last
      }
    end,
  },
}
