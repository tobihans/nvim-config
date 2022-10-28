return function(opts)
  opts.defaults["history"] = {
    path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
    limit = 100,
  }

  opts.extensions = { "smart_history" }

  return opts
end
