local headers = {
  [[
 ██╗  ██╗ ███████╗██╗     ██╗      █████╗   ██╗  ██╗ █████╗ ███╗  ██╗ ██████╗ ██╗
 ██║  ██║ ██╔════╝██║     ██║     ██╔══██╗  ██║  ██║██╔══██╗████╗ ██║██╔════╝ ██║
 ███████║ █████╗  ██║     ██║     ██║  ██║  ███████║███████║██╔██╗██║╚█████╗  ██║
 ██╔══██║ ██╔══╝  ██║     ██║     ██║  ██║  ██╔══██║██╔══██║██║╚████║ ╚═══██╗ ╚═╝
 ██║  ██║ ███████╗███████╗███████╗╚█████╔╝  ██║  ██║██║  ██║██║ ╚███║██████╔╝ ██╗
 ╚═╝  ╚═╝ ╚══════╝╚══════╝╚══════╝ ╚════╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══╝╚═════╝  ╚═╝
]],
  -- From https://github.com/UTFeight/awesome-ascii/blob/master/ascii.txt
  [[
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠰⠛⠻⢿⣿⠿⠿⠟⡿⠿⢿⣿⠿⠿⣿⠃⠀⠟⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣴⡄⠀⠘⡇⠀⣤⣤⡇⠀⣼⣿⠀⢠⡏⠀⢠⣦⠀⠀⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠛⠃⠀⡼⠀⠀⣿⣿⠀⠀⠛⠃⠀⢸⠁⠀⣼⡏⠀⢠⡟⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣾⣷⣶⣾⣿⣿⣷⣶⣶⣶⣶⣿⣶⣶⣿⣷⣶⣾⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
 ]],
}

return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    opts.section.header.val = headers[math.random(#headers)]
    return opts
  end,
}
