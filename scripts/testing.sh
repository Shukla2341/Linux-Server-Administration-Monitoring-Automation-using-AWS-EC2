#!/bin/bash

echo "===== Server Testing ====="

echo "Internet Connectivity"

ping -c 4 google.com

echo "--------------------------------"

echo "Disk Usage"

df -h

echo "--------------------------------"

echo "Memory"

free -h

echo "--------------------------------"

echo "CPU"

top -bn1 | head -10

echo "--------------------------------"

echo "Nginx Status"

systemctl status nginx --no-pager

echo "--------------------------------"

echo "SSH Connectivity"

systemctl status ssh --no-pager

echo "--------------------------------"

echo "Running Processes"

ps -ef | head -20