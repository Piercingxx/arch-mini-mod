
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
