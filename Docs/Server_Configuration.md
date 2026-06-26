Server Configuration
Objective

Configure the Linux server for production-like usage.

Configuration
Hostname
Timezone
User Management
Package Updates
Kernel Parameters
Commands
sudo hostnamectl set-hostname devops-server
sudo timedatectl set-timezone Asia/Kolkata
sudo sysctl -p
Verification
hostnamectl
timedatectl