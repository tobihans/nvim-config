-- This function is run last
-- good place to configuring augroups/autocommands and custom filetypes
return function()
  -- open dashboard when all buffers are closed
  local function alpha_on_bye(cmd)
    local bufs = vim.fn.getbufinfo { buflisted = true }
    vim.cmd(cmd)
    if require("core.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
  end

  vim.keymap.del("n", "<leader>c")

  if require("core.utils").is_available "bufdelete.nvim" then
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "Bdelete!" end, { desc = "Close buffer" })
  else
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "bdelete!" end, { desc = "Close buffer" })
  end

  -- load additional config
  vim.cmd "source ~/.config/nvim/lua/user/vim/init.vim"
end
