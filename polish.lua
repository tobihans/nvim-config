local utils = require "core.utils"

-- open dashboard when all buffers are closed
local function alpha_on_bye(cmd)
  local bufs = vim.fn.getbufinfo { buflisted = true }
  vim.cmd(cmd)
  if utils.is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
end

-- A function run last by AstroNvim
-- Polish my neovom setup with these last pieces
return function()
  vim.keymap.del("n", "<leader>c")

  if utils.is_available "bufdelete.nvim" then
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "Bdelete!" end, { desc = "Close buffer" })
  else
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "bdelete!" end, { desc = "Close buffer" })
  end

  -- load additional config
  vim.cmd "source ~/.config/nvim/lua/user/vim/init.vim"
end
