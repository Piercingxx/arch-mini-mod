#!/bin/bash

# Run at startup to force wifi on.
    sudo modprobe -r brcmfmac
    sudo modprobe brcmfmac
    sudo ip link set wlan0 up
    sudo iw wlan0 scan