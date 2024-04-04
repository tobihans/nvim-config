# My Neovim config

> NOTE: This is no longer maintained. I moved my nvim config inside my dotfiles.
> https://github.com/tobihans/dotfiles.git

This repository contains my config for Neovim.
It's based on [AstroNvim v3](https://github.com/AstroNvim/AstroNvim.git).

## Setup
```shell
# Backup old config
mv ~/.config/nvim ~/.config/nvim.bak

# Backup editor state
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Clone
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git checkout v3.45.3 -b version3  # Checkout a version 3 branch
git clone https://github.com/tobihans/nvim-config ~/.config/nvim/lua/user
```
You can also use `NVIM_APPNAME` to configure without touching your config.
