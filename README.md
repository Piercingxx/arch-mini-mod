
# Arch‑Mini‑Mod

A minimal Arch Linux installer focused on Hyprland.  
Designed for a lightweight setup, ideal for Linux tablets and touch devices.
Automates essential package installation, Hyprland setup, and basic configuration for a streamlined, touch-friendly experience.



## 📦 Features

- Minimal install: only core packages and Hyprland
- Lightweight and fast, perfect for tablets or low-resource devices
- Optional Microsoft Surface kernel support
- Touch-friendly configuration
- Applies [Piercing‑Dots](https://github.com/PiercingXX/piercing-dots) minimal dotfiles



## 🚀 Quick Start

```bash
git clone https://github.com/PiercingXX/arch-mini-mod
cd arch-mini-mod
chmod -R u+x scripts/
./arch-mod.sh
```



## 🛠️ Usage

Run `./arch-mod.sh` and follow the prompts.  
Options include minimal system install, Surface kernel, Hyprland, and reboot.





## Linux on NuVision 8" Tablet TM800W610L
Wi-Fi
This tablet has a BCM4356 Wi-Fi/Bluetooth card
Run
```
dmesg | grep brcmfmac
```

If you get a message wanting brcm43430a0-sdio.bin do both parts
If it wants brcm43430a0-sdio.txt do the second part only.

brcm43430a0-sdio.bin & brcm43430a0-sdio.txt is in the Resources folder
-or-
GREP txt from the Windows 10 install C:\Windows\System32\drivers\43430r0nvram.txt and rename it to brcm43430a0-sdio.txt

Once you have those two files you want to put them in /lib/firmware/brcm/ so you should have both /lib/firmware/brcm/brcm43430a0-sdio.bin and /lib/firmware/brcm/brcm43430a0-sdio.txt

Screen Orientation is off by 90 degrees on Debian, does not auto rotate on Arch. Have not tested audio as I am using this with yazi and nvim only.





## 🔧 Optional Scripts

| Script                | Purpose                                 |
|-----------------------|-----------------------------------------|
| `scripts/apps.sh`     | Installs core desktop applications      |
| `scripts/hyprland-install.sh` | Installs Hyprland and dependencies |
| `scripts/nvidia.sh`   | Installs proprietary NVIDIA drivers     |
| `scripts/Surface.sh`  | Installs Microsoft Surface kernel       |

---

## 📄 License

MIT © PiercingXX  
See the LICENSE file for details.

---

## 🤝 Contributing

Fork, branch, and PR welcome.  
Keep scripts POSIX‑friendly and avoid hard‑coded paths.

---

## 📞 Support

*No direct support provided.*
```
