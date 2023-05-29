return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      -- components
      local mode = status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }
      local surround_mode = status.utils.surround({ "", "  " }, status.hl.mode_bg, mode, function() return true end)

      opts.winbar = nil;

      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        surround_mode,
        status.component.git_branch(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp { lsp_progress = false },
        status.component.treesitter(),
        status.component.nav(),
      }

      return opts
    end,
  },
}
