#!/bin/bash
# GitHub.com/PiercingXX

# Set up variables for better readability
PKGMGR="paru -S --noconfirm"

# Install core Hyprland components
${PKGMGR} hyprland-meta-git
${PKGMGR} hyprpaper
${PKGMGR} hypridle
${PKGMGR} hyprcursor-git

# Install additional utilities
${PKGMGR} wl-clipboard
${PKGMGR} libdbusmenu-gtk3

# Set up Waybar and menus
${PKGMGR} waybar
${PKGMGR} nwg-drawer
${PKGMGR} fuzzel
${PKGMGR} wlogout
${PKGMGR} libnotify
${PKGMGR} notification-daemon
${PKGMGR} swaync
${PKGMGR} polkit-gnome

# Install audio tools
${PKGMGR} pamixer
${PKGMGR} cava
${PKGMGR} wireplumber
${PKGMGR} playerctl
${PKGMGR} pavucontrol

# Network and Bluetooth utilities
${PKGMGR} networkmanager
${PKGMGR} network-manager-applet

# GUI customization tools
${PKGMGR} nwg-look

#Wallpaper
${PKGMGR} swww

# Success message
echo -e "\nAll packages installed successfully!"
