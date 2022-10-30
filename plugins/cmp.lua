local luasnip = require "luasnip"
local cmp = require "cmp"

local has_words_before = function()
  local line, col = table.unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

function leave_snippet()
  if
    ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
    and luasnip.session.current_nodes[vim.api.nvim_get_current_buf()]
    and not luasnip.session.jump_active
  then
    luasnip.unlink_current()
  end
end

return function(opts)
  opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif luasnip.expand_or_locally_jumpable() then
      luasnip.expand_or_jump()
    elseif has_words_before() then
      cmp.complete()
    else
      fallback()
    end
  end, { "i", "s" })

  opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" })

  -- An attempt to prevent luasnip from jumping while I actually want a real <Tab>
  -- See https://github.com/L3MON4D3/LuaSnip/issues/258#issuecomment-1011938524
  vim.api.nvim_command [[
    autocmd ModeChanged * lua leave_snippet()
]]

  return opts
end
