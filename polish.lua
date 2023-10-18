local utils = require "user.utils"

-- A function run last by AstroNvim
-- Polish my neovim setup with these last pieces
return function()
  -- Custom filetypes
  vim.filetype.add {
    extension = {
      yml = utils.yaml_ft,
      yaml = utils.yaml_ft,
    },
    pattern = {
      -- Chezmoi dotfiles
      ['dot_bash.*'] = 'bash',
      ['dot.*.sh'] = 'bash',
      ['dot_functions.*'] = 'bash',
    }
  }

  -- https://www.reddit.com/r/neovim/comments/12gvms4/this_is_why_your_higlights_look_different_in_90/
  local links = {
    ["@lsp.type.namespace"] = "@namespace",
    ["@lsp.type.type"] = "@type",
    ["@lsp.type.class"] = "@type",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.interface"] = "@type",
    ["@lsp.type.struct"] = "@structure",
    ["@lsp.type.parameter"] = "@parameter",
    ["@lsp.type.variable"] = "@variable",
    ["@lsp.type.property"] = "@property",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.function"] = "@function",
    ["@lsp.type.method"] = "@method",
    ["@lsp.type.macro"] = "@macro",
    ["@lsp.type.decorator"] = "@function",
  }
  for newgroup, oldgroup in pairs(links) do
    vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
  end

  -- Disable somethings for terminal
  vim.api.nvim_create_augroup("TerminalSetup", { clear = true })
  vim.api.nvim_create_autocmd("TermEnter", {
    group = "TerminalSetup",
    command = "setl nonumber norelativenumber signcolumn=no statuscolumn=",
  })

  -- Switch between light ans dark themes depending on daytime
  utils.schedule_background_switch()

  -- VimScript
  vim.cmd "source ~/.config/nvim/lua/user/init.vim"
end
