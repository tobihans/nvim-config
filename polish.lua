local utils = require "astronvim.utils"

-- open dashboard when all buffers are closed
local function alpha_on_bye(cmd)
  local bufs = vim.fn.getbufinfo { buflisted = true }
  vim.cmd(cmd)
  if utils.is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
end

local function yaml_ft(path, bufnr)
  -- get content of buffer as string
  local content = vim.filetype.getlines(bufnr)
  if type(content) == "table" then content = table.concat(content, "\n") end

  -- check if file is in roles, tasks, or handlers folder
  local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
  if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
  -- check for known ansible playbook text and if found, return yaml.ansible
  local regex = vim.regex "hosts:\\|tasks:"
  if regex and regex:match_str(content) then return "yaml.ansible" end

  -- return yaml if nothing else
  return "yaml"
end

-- A function run last by AstroNvim
-- Polish my neovim setup with these last pieces
return function()
  vim.keymap.del("n", "<leader>c")

  if utils.is_available "bufdelete.nvim" then
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "Bdelete!" end, { desc = "Close buffer" })
  else
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "bdelete!" end, { desc = "Close buffer" })
  end

  vim.filetype.add {
    extension = {
      yml = yaml_ft,
      yaml = yaml_ft,
    },
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

  -- Disable columns for terminal
  vim.api.nvim_create_augroup("TerminalSetup", { clear = true })
  vim.api.nvim_create_autocmd("TermEnter", {
    group = "TerminalSetup",
    command = "setl nonumber norelativenumber signcolumn=no statuscolumn=",
  })

  -- VimScript
  vim.cmd "source ~/.config/nvim/lua/user/vim/init.vim"
end
