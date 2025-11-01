#!/bin/bash
# GitHub.com/PiercingXX

# Script to install and enable KooTigers drivers service
sudo cp /home/dr3k/arch-mini-mod/resources/KooTigers-drivers/kootigers-drivers.service /etc/systemd/system/
sudo cp /home/dr3k/arch-mini-mod/resources/KooTigers-drivers/kootigers-drivers.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/kootigers-drivers.sh
sudo systemctl daemon-reload
sudo systemctl enable --now kootigers-drivers.service
