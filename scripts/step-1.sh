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

# Add Paru
    echo -e "${YELLOW}Installing Paru, Flatpak, & Dependencies...${NC}"
        # Clone and install Paru
        echo "# Cloning and installing Paru..."
        git clone https://aur.archlinux.org/paru-bin.git && cd paru-bin && makepkg -si --noconfirm && cd ..

# Installing more Depends
    echo "# Installing more dependencies..."
    paru -S dconf --noconfirm
    paru -S cpio cmake meson --nocofirm
    paru -S fwupd --noconfirm
    paru -S w3m --noconfirm
    paru -S dconf --noconfirm
    paru -S fuzzel --noconfirm
    paru -S kitty --noconfirm
    paru -S python --noconfirm

# Nvim & Depends
    paru -Rs neovim --noconfirm
    paru -S neovim-nightly-bin --noconfirm
    paru -S luarocks --noconfirm
    paru -S lua51 --noconfirm
    paru -S python --noconfirm
    paru -S python-pip --noconfirm

# Firewall
    paru -S ufw --noconfirm
    sudo ufw allow OpenSSH

# Install bash stuff
    paru -S fastfetch --noconfirm
    paru -S multitail --noconfirm
    paru -S tree --noconfirm
    pacman -s bat --noconfirm
    paru -S bash-completion --noconfirm
    paru -S trash-cli --noconfirm
    paru -S fzf --noconfirm
    paru -S zoxide --noconfirm
    paru -S starship --noconfirm
    paru -S exa --noconfirm
    paru -S jump-bin --noconfirm

# Yazi
    paru -S yazi-nightly-bin 
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
    ya pack -a grappas/wl-clipboard

# Apps to uninstall
    sudo pacman -Rs gnome-console --noconfirm
    sudo pacman -Rs firefox --noconfirm
    sudo pacman -Rs epiphany --noconfirm

# Synology
    paru -S synology-drive --noconfirm
    #Synology Drive doesnt support wayland so run this...
    QT_QPA_PLATFORM=xcb

# System Control Services
    echo "# Enabling Bluetooth and Printer services..."
    # Enable Bluetooth
        sudo systemctl start bluetooth
        systemctl enable bluetooth
    # Enable Printer 
        sudo pacman -S cups gutenprint cups-pdf gtk3-print-backends nmap net-tools cmake meson cpio --noconfirm
        sudo systemctl enable cups.service
        sudo systemctl start cups

# Install fonts
    echo "Installing Fonts"
    cd "$builddir" || exit
    sudo pacman -S ttf-firacode-nerd --noconfirm
    paru -S ttf-nerd-fonts-symbols --noconfirm
    # Reload Font
    fc-cache -vf
    wait

# Apply Piercing Rice
    echo -e "${YELLOW}Applying PiercingXX Gnome Customizations...${NC}"
    rm -rf piercing-dots
    git clone --depth 1 https://github.com/Piercingxx/piercing-dots.git
    cd piercing-dots || exit
    chmod u+x install.sh
    ./install.sh
    cd "$builddir" || exit
    rm -rf piercing-dots