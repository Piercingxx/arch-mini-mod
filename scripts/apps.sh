#!/bin/bash
# GitHub.com/PiercingXX

username=$(id -u -n 1000)
builddir=$(pwd)

# Apps to Install
    paru -S fwupd --noconfirm
    paru -S w3m --noconfirm
    paru -S dconf --noconfirm
    paru -S fuzzel --noconfirm
    paru -S kitty --noconfirm
    paru -S python --noconfirm
    paru -S npm --noconfirm

# Nvim & Depends
    paru -Rs neovim --noconfirm
    paru -S neovim-nightly-bin --noconfirm
    sudo pacman -S ripgrep --noconfirm
    paru -S luarocks --noconfirm
    paru -S lua51 --noconfirm
    paru -S python --noconfirm
    paru -S python-pip --noconfirm

# Firewall
    paru -S ufw --noconfirm
    sudo ufw allow OpenSSH

# Yazi
    paru -S yazi-nightly-bin ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick --noconfirm
    ya pkg add dedukun/bookmarks
    ya pkg add yazi-rs/plugins:mount
    ya pack -a grappas/wl-clipboard

# Apps to uninstall
    sudo pacman -Rs gnome-console --noconfirm
    sudo pacman -Rs firefox --noconfirm

# Synology
    paru -S synology-drive --noconfirm
    #Synology Drive doesnt support wayland so run this...
    QT_QPA_PLATFORM=xcb
