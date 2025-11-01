1. Must install systemd not grub
2. Script will install and enable a systemd service, installer must be run as root.
3. Run your installer script as root (or copy the files manually)
4. Reboot your system.
5. Check touchscreen functionality.
6. If it doesn’t work, check the service status:
   ```
      systemctl status kootigers-drivers.service
      journalctl -u kootigers-drivers.service -b
   ```

Notes:
boot-touchscreen.sh must be executed with sudo (it does not itself escalate privileges).
If the driver script needs the device present when it runs, udev timing can matter; the unit above waits for systemd-udevd. If needed, add a small sleep or an ExecStartPre/ExecStartPost with udevadm trigger.
Ensure kootigers-drivers.sh actually loads/configures the touchscreen — the service only runs that script.
