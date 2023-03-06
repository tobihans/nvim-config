return function(table)
    -- table.source_selector = {
    --     winbar = false,
    --     statusline = false,
    -- }

    table["filesystem"]["filtered_items"] = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "__pycache__",
        },
    }

    return table
end
