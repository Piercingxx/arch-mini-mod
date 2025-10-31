#!/bin/bash
# GitHub.com/PiercingXX

username=$(id -u -n 1000)
builddir=$(pwd)


# Create Directories if needed
    echo -e "${YELLOW}Creating Necessary Directories...${NC}"
        # font directory
            if [ ! -d "$HOME/.fonts" ]; then
                mkdir -p "$HOME/.fonts"
            fi
            chown -R "$username":"$username" "$HOME"/.fonts
        # icons directory
            if [ ! -d "$HOME/.icons" ]; then
                mkdir -p /home/"$username"/.icons
            fi
            chown -R "$username":"$username" /home/"$username"/.icons
        # Background and Profile Image Directories
            if [ ! -d "$HOME/$username/Pictures/backgrounds" ]; then
                mkdir -p /home/"$username"/Pictures/backgrounds
            fi
            chown -R "$username":"$username" /home/"$username"/Pictures/backgrounds
            if [ ! -d "$HOME/$username/Pictures/profile-image" ]; then
                mkdir -p /home/"$username"/Pictures/profile-image
            fi
            chown -R "$username":"$username" /home/"$username"/Pictures/profile-image

# System Update
    sudo pacman -Syu --noconfirm

# Install dependencies
    echo "# Installing dependencies..."
    sudo pacman -S reflector --noconfirm
    sudo pacman -S zip unzip gzip tar make wget tar fontconfig --noconfirm
    sudo pacman -Syu linux-firmware linux-firmware-brcm43752 linux-firmware-broadcom linux-firmware-realtek --noconfirm
    sudo pacman -S bluez bluez-utils --noconfirm
    sudo pacman -S iw --noconfirm

# Add Paru
    echo -e "${YELLOW}Installing Paru, Flatpak, & Dependencies...${NC}"
        # Clone and install Paru
        echo "# Cloning and installing Paru..."
        git clone https://aur.archlinux.org/paru-bin.git && cd paru-bin && makepkg -si --noconfirm && cd ..

# Installing more Depends
    echo "# Installing more dependencies..."
    paru -S bluetuith --noconfirm
    paru -S dconf --noconfirm
    paru -S cpio cmake meson --nocofirm
    paru -S fwupd --noconfirm
    paru -S w3m --noconfirm
    paru -S kitty --noconfirm
    paru -S python --noconfirm
    paru -S wmctrl xdotool libinput-gestures --noconfirm

#Hyprland and Utilities
    paru -S --noconfirm hyprland-meta-git
    paru -S --noconfirm hyprpaper
    paru -S --noconfirm hypridle
    paru -S --noconfirm polkit-gnome
    paru -S --noconfirm wl-clipboard
    paru -S --noconfirm libdbusmenu-gtk3
    paru -S --noconfirm waybar
    paru -S --noconfirm nwg-drawer
    paru -S --noconfirm fuzzel
    paru -S --noconfirm wlogout
    paru -S --noconfirm libnotify
    paru -S --noconfirm notification-daemon
    paru -S --noconfirm swaync
    paru -S --noconfirm hyprshot
    paru -S --noconfirm wl-gammarelay
    paru -S --noconfirm brightnessctl
    paru -S --noconfirm light
    paru -S --noconfirm cliphist
    paru -S --noconfirm pamixer
    paru -S --noconfirm cava
    paru -S --noconfirm wireplumber
    paru -S --noconfirm playerctl
    paru -S --noconfirm pavucontrol
    paru -S --noconfirm networkmanager
    paru -S --noconfirm network-manager-applet
    paru -S --noconfirm nwg-look
    paru -S --noconfirm nwg-displays

# Apps to Install
    paru -S fwupd --noconfirm
    paru -S w3m --noconfirm
    paru -S python --noconfirm
    paru -S npm --noconfirm
    paru -S nautilus-open-any-terminal --noconfirm
    paru -S nautilus-renamer --noconfirm
    paru -S ulauncher --noconfirm
    paru -S proton-vpn-gtk-app --noconfirm
    flatpak install flathub net.waterfox.waterfox -y
    flatpak install flathub md.obsidian.Obsidian -y
    flatpak install flathub org.libreoffice.LibreOffice -y
    flatpak install flathub com.mattjakeman.ExtensionManager -y
    flatpak install flathub org.qbittorrent.qBittorrent -y
    flatpak install flathub io.missioncenter.MissionCenter -y
    flatpak install flathub io.github.shiftey.Desktop -y #Github Desktop
    flatpak install --noninteractive flathub io.github.realmazharhussain.GdmSettings -y

# Nvim & Depends
    paru -Rs neovim --noconfirm
    paru -S neovim-nightly-bin --noconfirm
    paru -S luarocks --noconfirm
    paru -S lua51 --noconfirm

# Firewall
    paru -S ufw --noconfirm
    sudo ufw allow OpenSSH

# Install bash stuff
    install_bashrc_support

# Yazi
    paru -S yazi-nightly-bin --noconfirm
    paru -S ffmpeg --noconfirm
    paru -S 7zip --noconfirm
    paru -S jq --noconfirm
    paru -S poppler --noconfirm
    paru -S fd --noconfirm
    paru -S ripgrep --noconfirm
    paru -S fzf --noconfirm
    paru -S zoxide --noconfirm
    paru -S resvg --noconfirm
    paru -S imagemagick --noconfirm
    ya pkg add dedukun/bookmarks
    ya pkg add yazi-rs/plugins:mount
    ya pkg add grappas/wl-clipboard

# Apps to uninstall
    sudo pacman -Rs gnome-console --noconfirm
    sudo pacman -Rs firefox --noconfirm
    sudo pacman -Rs epiphany --noconfirm
    sudo pacman -Rs gnome-terminal --noconfirm
    sudo pacman -Rs gnome-software --noconfirm
    sudo pacman -Rs software-center --noconfirm
    sudo pacman -Rs dolphin --noconfirm
    sudo pacman -Rs gnome-maps --noconfirm
    sudo pacman -Rs gnome-photos --noconfirm
    sudo pacman -Rs gnome-calendar --noconfirm
    sudo pacman -Rs gnome-contacts --noconfirm
    sudo pacman -Rs gnome-music --noconfirm
    sudo pacman -Rs gnome-text-editor --noconfirm
    sudo pacman -Rs gnome-weather --noconfirm


# Synology
    paru -S synology-drive --noconfirm
    #Synology Drive doesnt support wayland so run this...
    QT_QPA_PLATFORM=xcb

# Tailscale
    paru -S tailscale --noconfirm

# Theme stuffs
    paru -S papirus-icon-theme-git --noconfirm

# Install fonts
    echo "Installing Fonts"
    cd "$builddir" || exit
    sudo pacman -S ttf-firacode-nerd --noconfirm
    paru -S ttf-nerd-fonts-symbols --noconfirm
    sudo pacman -S ttf-nerd-fonts-symbols-mono --noconfirm
    paru -S noto-fonts-emoji-colrv1 --noconfirm
    sudo pacman -S ttf-jetbrains-mono-nerd --noconfirm
    paru -S ttf-firacode --noconfirm
    paru -S awesome-terminal-fonts-patched --noconfirm
    paru -S ttf-ms-fonts --noconfirm
    paru -S terminus-font-ttf --noconfirm
    paru -S wtype-git --noconfirm
    paru -S xcursor-simp1e-gruvbox-light --noconfirm
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
    unzip FiraCode.zip -d /home/"$username"/.fonts
    sudo rm FiraCode.zip
    # Reload Font
    fc-cache -vf
    wait

# OpenSSH
    echo "# Enabling OpenSSH Service..."
    sudo pacman -S openssh --noconfirm
    sudo systemctl enable sshd
    sudo systemctl start sshd

# Apply Piercing Rice
    echo -e "${YELLOW}Applying PiercingXX Gnome Customizations...${NC}"
    rm -rf piercing-dots
    git clone --depth 1 https://github.com/Piercingxx/piercing-dots.git
    cd piercing-dots || exit
    chmod u+x install.sh
    ./install.sh
    cd "$builddir" || exit
    rm -rf piercing-dots

# System Control Services
    echo "# Enabling Bluetooth and Printer services..."
    # Enable Bluetooth
        sudo systemctl start bluetooth
        sudo systemctl enable bluetooth