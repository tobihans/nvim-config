local M = {}

-- Sets the background based on the time of day
function M.set_background()
  local hour = tonumber(os.date "%H")
  local bg = (hour > 7 and hour < 18) and "light" or "dark"
  if vim.o.bg ~= bg and vim.g.auto_switch_bg then
    vim.o.bg = bg
    require("astronvim.utils").notify(
      string.format("Background switched to '%s'.", bg),
      vim.log.levels.INFO,
      { title = "😇😇😇" }
    )
  end
end

-- Schedule the background switch
function M.schedule_background_switch()
  if vim.g.auto_switch_bg then
    local timer = vim.loop.new_timer()
    if timer then timer:start(0, 600, vim.schedule_wrap(M.set_background)) end
  end
end

return M
