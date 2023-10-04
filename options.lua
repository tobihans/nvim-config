return {
  opt = {
    so = 7,     -- 7 lines to the cursor when moving with j/k
    hid = true, -- hide abandoned buffers
    ruler = true,
    cmdheight = 0,
    mouse = "",
    history = 500,
    updatetime = 250,
    writebackup = false,
    smartindent = true,
    relativenumber = true,
    -- line break on 500 chars
    lbr = true,
    tw = 500,
    ai = true,   -- auto indentation
    si = true,   -- smart indentation
    wrap = true, -- wrap lines
    expandtab = true,
    smarttab = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    magic = true,     -- magic on for regex
    showmatch = true, -- show matching brackets
    mat = 2,          -- blink for 2 thenth of a second for brackets matching
    -- Search
    ignorecase = true,
    smartcase = true,
    hlsearch = true,
    incsearch = true,
    -- Performance
    lazyredraw = false, -- disabled due to noice.nvim
    -- Folding
    foldlevelstart = 10,
    foldnestmax = 5,
    foldminlines = 1,
    fillchars = "eob: ",
    -- No backup
    backup = false,
    wb = false,
    swapfile = false,
    -- shell = require("user.utils").detect_shell(),
  },
  g = {
    mapleader = ",",
    maplocalleader = "/",
    autoformat_enabled = false,
    copilot_enabled = true,
    auto_switch_bg = false,
  },
}
