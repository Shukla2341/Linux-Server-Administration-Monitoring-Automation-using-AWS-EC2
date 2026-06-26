#!/bin/bash

echo "===== Server Monitoring ====="

echo "Hostname:"
hostname

echo "--------------------------------"

echo "System Uptime:"
uptime

echo "--------------------------------"

echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo "--------------------------------"

echo "Memory Usage:"
free -h

echo "--------------------------------"

echo "Disk Usage:"
df -h

echo "--------------------------------"

echo "Running Services:"
systemctl --type=service --state=running | head -20