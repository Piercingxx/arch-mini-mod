# NuVision 8" Tablet Drivers & Scripts

Enable WiFi, Bluetooth, and audio support for NuVision 8" tablets on Arch Linux and similar distros.

---

## 📦 What This Does

- Provides scripts and drivers for WiFi, Bluetooth, and audio hardware
- Includes startup scripts and desktop entry for automatic WiFi initialization
- Contains firmware files for Broadcom WiFi/Bluetooth chips
- Designed for use with Arch Linux (may work with other distros with minor tweaks)

---

## 🚀 Quick Install

Run the main installer script as root:

```bash
sudo ./nuvision-tablet-drivers.sh
```

Or, copy the files manually:

```bash
# WiFi/Bluetooth firmware
sudo cp wifi-bluetooth-drivers/* /lib/firmware/

# Audio drivers (if present)
sudo cp audio-drivers/* /lib/firmware/

# WiFi startup script and desktop entry
sudo cp wifi-startup.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/wifi-startup.sh
sudo cp wifi-startup.desktop /etc/xdg/autostart/
```

---

## 🛠️ Usage

1. Make sure your system uses **systemd** and supports autostart desktop entries.
2. Run the installer as **root** (or use the manual steps above).
3. Reboot your system.
4. Test WiFi, Bluetooth, and audio functionality.
5. If WiFi does not start automatically, check the desktop entry and script permissions.

---

## 📝 Notes & Troubleshooting

- `nuvision-tablet-drivers.sh` must be run with `sudo` (it does **not** escalate privileges itself).
- Firmware files are for Broadcom chips commonly found in NuVision tablets. If your hardware differs, you may need other firmware.
- For audio issues, check the `audio-drivers` folder for additional firmware or configuration scripts.
- If WiFi or Bluetooth does not work, verify that the correct firmware files are present in `/lib/firmware/` and that your kernel supports the device.
- For autostart issues, ensure `wifi-startup.desktop` is in the correct autostart directory and references the correct script path.

---

## 📄 License

MIT © PiercingXX