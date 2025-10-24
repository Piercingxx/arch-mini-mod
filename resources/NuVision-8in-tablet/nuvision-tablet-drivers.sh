#!/bin/bash

# Ensure linux-firmware is installed
    sudo pacman -S --needed linux-firmware --noconfirm
    sudo pacman -S --needed broadcom-wl-dkms bluez bluez-utils --noconfirm
    sudo pacman -S --needed sof-firmware alsa-utils --noconfirm

# Apply Wifi and Bluetooth drivers
    cp wifi-bluetooth-drivers/* /lib/firmware/brcm/
    cp audio-drivers/* /lib/firmware/intel/

# Restart Bluetooth service
    sudo systemctl restart bluetooth
    echo "Bluetooth firmware fix applied."

# Audio fix
    # Reload audio kernel modules
    sudo modprobe -r snd_sof_pci snd_sof_acpi_intel_byt snd_sof_acpi snd_sof_intel_atom snd_sof_xtensa_dsp snd_sof snd_intel_sst_acpi snd_intel_sst_core snd_soc_sst_atom_hifi2_platform snd_soc_core snd_pcm
    sudo modprobe snd_sof_pci
# Restart sound service (PipeWire example)
    systemctl --user restart pipewire
    echo "Audio fix applied."


# Touchscreen calibration
# Create hwdb file with correct mount matrix
sudo tee /etc/udev/hwdb.d/61-sensor-local.hwdb > /dev/null <<EOF
sensor:modalias:acpi:KIOX000A*
 ACCEL_MOUNT_MATRIX=0,1,0;1,0,0;0,0,-1
EOF
# Update hardware database
    sudo systemd-hwdb update
# Trigger udev to reload sensor settings
    sudo udevadm trigger /sys/bus/iio/devices/iio:device0
# Restart iio-sensor-proxy service
    sudo systemctl restart iio-sensor-proxy
echo "Tablet rotation fix applied. Please reboot if changes do not take effect."