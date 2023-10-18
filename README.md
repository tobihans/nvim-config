# My Neovim config

This repository contains my config for Neovim.
It's based on [AstroNvim](https://github.com/AstroNvim/AstroNvim.git).

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
git clone https://github.com/tobihans/nvim-config ~/.config/nvim/lua/user
```
