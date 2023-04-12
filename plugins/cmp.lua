table.unpack = table.unpack or unpack -- 5.1 compatibility, see https://github.com/hrsh7th/nvim-cmp/issues/1017

local has_words_before = function()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)

  if cursor_pos == nil then return false end

  local line, col = table.unpack(cursor_pos)
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

function leave_snippet()
  local luasnip = require "luasnip"

  if
      ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
      and luasnip.session.current_nodes[vim.api.nvim_get_current_buf()]
      and not luasnip.session.jump_active
  then
    luasnip.unlink_current()
  end
end

return {
  {
    "zbirenbaum/copilot.lua",
    disabled = not vim.g.copilot_enabled,
    cmd = "Copilot",
    event = "User AstroFile",
    opts = { panel = { enabled = false }, suggestion = { auto_trigger = true, debounce = 100 } },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    opts = function(_, opts)
      local cmp = require "cmp"
      local luasnip = require "luasnip"
      local copilot = require "copilot.suggestion"

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

      if vim.g.copilot_enabled then
        opts.mapping["<C-c>"] = cmp.mapping(function()
          if copilot.is_visible() then copilot.accept() end
        end)

        opts.mapping["<C-x>"] = cmp.mapping(function()
          if copilot.is_visible() then copilot.next() end
        end)

        opts.mapping["<C-z>"] = cmp.mapping(function()
          if copilot.is_visible() then copilot.prev() end
        end)
      end

      -- An attempt to prevent luasnip from jumping while I actually want a real <Tab>
      -- See https://github.com/L3MON4D3/LuaSnip/issues/258#issuecomment-1011938524
      vim.api.nvim_command [[ autocmd ModeChanged * lua leave_snippet() ]]

      return opts
    end,
  },
}
