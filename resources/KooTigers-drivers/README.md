
# 🐯 KooTigers Touchscreen Driver

Enable Goodix GDIX1002 touchscreen support for select tablets on Arch Linux.

---

## 📦 What This Does

- Installs and enables a systemd service to load the KooTigers touchscreen driver.
- Ensures the touchscreen is powered, kernel modules are loaded, and the PCI adapter is reset if needed.
- Designed for use with Arch and Debian (will work on other distros with minor tweaks).

---

## 🚀 Quick Install

Run the installer script as root:

```bash
sudo ./boot-touchscreen.sh
```

Or, copy the files manually:

```bash
sudo cp kootigers-drivers.service /etc/systemd/system/
sudo cp kootigers-drivers.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/kootigers-drivers.sh
sudo systemctl daemon-reload
sudo systemctl enable --now kootigers-drivers.service
```

---

## 🛠️ Usage

1. Make sure your system uses **systemd**.
2. Run the installer as **root** (or use the manual steps above).
3. Reboot your system.
4. Test touchscreen functionality.
5. If the touchscreen does not work, check the service status:

   ```bash
   systemctl status kootigers-drivers.service
   journalctl -u kootigers-drivers.service -b
   ```

---

## 📝 Notes & Troubleshooting

- `boot-touchscreen.sh` must be run with `sudo` (it does **not** escalate privileges itself).
- If the driver script needs the device present at boot, udev timing can matter. The service waits for `systemd-udevd`, but you may need to add a small sleep or use `ExecStartPre/ExecStartPost` with `udevadm trigger` for some devices.
- Ensure `kootigers-drivers.sh` actually loads/configures the touchscreen — the service only runs that script.

---

## 📄 License

MIT © PiercingXX

