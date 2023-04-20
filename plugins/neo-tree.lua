return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function()
        local get_icon = require("astronvim.utils").get_icon
        local global_commands = {
            system_open = function(state) require("astronvim.utils").system_open(state.tree:get_node():get_id()) end,
            parent_or_close = function(state)
                local node = state.tree:get_node()
                if (node.type == "directory" or node:has_children()) and node:is_expanded() then
                    state.commands.toggle_node(state)
                else
                    require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
                end
            end,
            child_or_open = function(state)
                local node = state.tree:get_node()
                if node.type == "directory" or node:has_children() then
                    if not node:is_expanded() then -- if unexpanded, expand
                        state.commands.toggle_node(state)
                    else                 -- if expanded and has children, seleect the next child
                        require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
                    end
                else -- if not a directory just open it
                    state.commands.open(state)
                end
            end,
        }

        return {
            close_if_last_window = true,
            source_selector = {
                winbar = false,
            },
            default_component_configs = {
                indent = { padding = 0 },
                icon = {
                    folder_closed = get_icon "FolderClosed",
                    folder_open = get_icon "FolderOpen",
                    folder_empty = get_icon "FolderEmpty",
                    default = get_icon "DefaultFile",
                },
                modified = { symbol = get_icon "FileModified" },
                git_status = {
                    symbols = {
                        added = get_icon "GitAdd",
                        deleted = get_icon "GitDelete",
                        modified = get_icon "GitChange",
                        renamed = get_icon "GitRenamed",
                        untracked = get_icon "GitUntracked",
                        ignored = get_icon "GitIgnored",
                        unstaged = get_icon "GitUnstaged",
                        staged = get_icon "GitStaged",
                        conflict = get_icon "GitConflict",
                    },
                },
            },
            window = {
                width = 30,
                mappings = {
                    ["<space>"] = false, -- disable space until we figure out which-key disabling
                    o = "open",
                    O = "system_open",
                    h = "parent_or_close",
                    l = "child_or_open",
                },
            },
            filesystem = {
                follow_current_file = true,
                hijack_netrw_behavior = "open_current",
                use_libuv_file_watcher = true,
                commands = global_commands,
            },
            event_handlers = {
                { event = "neo_tree_buffer_enter", handler = function(_) vim.opt_local.signcolumn = "auto" end },
            },
        }
    end,
}
