#!/bin/bash

echo "===== Server Configuration ====="

sudo timedatectl set-timezone Asia/Kolkata

sudo hostnamectl set-hostname devops-server

echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

echo "Configuration completed."