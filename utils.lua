local M = {}

-- Shell detection
-- Detects if running inside tmux and use bash as shell
function M.detect_shell()
    if os.getenv "TMUX" then
        return "/bin/bash"
    else
        return "tmux"
    end
end

return M
