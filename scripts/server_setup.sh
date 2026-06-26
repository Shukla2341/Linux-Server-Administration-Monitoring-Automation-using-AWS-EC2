#!/bin/bash

echo "===== Linux Server Setup ====="

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y nginx git curl unzip wget htop tree net-tools rsync

sudo systemctl enable nginx
sudo systemctl start nginx

echo "Hostname: $(hostname)"

echo "Server setup completed successfully."