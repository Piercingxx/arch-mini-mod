#!/bin/bash
# GitHub.com/PiercingXX

# Set up variables for better readability
PKGMGR="paru -S --noconfirm"

# Install core Hyprland components
${PKGMGR} hyprland-meta-git
${PKGMGR} hyprpaper
${PKGMGR} hyprlock
${PKGMGR} hypridle
${PKGMGR} hyprcursor-git
${PKGMGR} hyprsunset

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

# Add screenshot and clipboard utilities
${PKGMGR} hyprshot
${PKGMGR} wl-gammarelay
${PKGMGR} brightnessctl
${PKGMGR} light
${PKGMGR} cliphist

# Install audio tools
${PKGMGR} pamixer
${PKGMGR} cava
${PKGMGR} wireplumber
${PKGMGR} playerctl
${PKGMGR} pavucontrol

# Network and Bluetooth utilities
${PKGMGR} networkmanager
${PKGMGR} network-manager-applet
${PKGMGR} bluez
${PKGMGR} bluez-uti
${PKGMGR} blueman

# GUI customization tools
${PKGMGR} nwg-look

#Gnome customization tool
${PKGMGR} dconf

#Monitor locator
${PKGMGR} nwg-displays

#Wallpaper
${PKGMGR} swww

# Success message
echo -e "\nAll packages installed successfully!"
