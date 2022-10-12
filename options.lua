local sonokai_variants = { "shusia", "maia", "espresso", "andromeda", "atlantis", "default" }

return {
  opt = {
    so = 7, -- 7 lines to the cursor when moving with j/k
    hid = true, -- hide abandoned buffers
    ruler = true,
    cmdheight = 1,
    mouse = "",
    history = 500,
    updatetime = 250,
    writebackup = false,
    smartindent = true,
    relativenumber = true,
    -- line break on 500 chars
    lbr = true,
    tw = 500,
    ai = true, -- auto indentation
    si = true, -- smart indentation
    wrap = true, -- wrap lines
    expandtab = true,
    smarttab = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    magic = true, -- magic on for regex
    showmatch = true, -- show matching brackets
    mat = 2, -- blink for 2 thenth of a second for brackets matching
    -- Search
    ignorecase = true,
    smartcase = true,
    hlsearch = true,
    incsearch = true,
    -- Performance
    lazyredraw = true,
    -- Folding
    foldlevelstart = 10,
    foldnestmax = 5,
    foldminlines = 1,
    foldmethod = "expr",
    fillchars = "fold: ",
    foldexpr = "nvim_treesitter#foldexpr()",
    foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend))]],
    -- No backup
    backup = false,
    wb = false,
    swapfile = false,
  },
  g = {
    mapleader = ",",
    -- doge_mapping = "<leader>\\",
    doge_enable_mappings = 0,
    sonokai_style = sonokai_variants[math.random(#sonokai_variants)],
    sonokai_better_performance = 1,
    sonokai_enable_italic = 1,
    db_ui_winwidth = 28,
  },
}
