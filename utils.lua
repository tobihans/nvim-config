local M = {}

-- Distinguish between yaml and ansible yaml
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
