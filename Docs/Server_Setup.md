Linux Server Setup
Objective

Set up an Ubuntu Linux server on AWS EC2 for administration and monitoring.

Prerequisites
AWS Account
EC2 Key Pair
Security Group
Ubuntu 22.04 Instance
Steps Performed
Launch an Ubuntu EC2 instance.
Connect using SSH.
Update system packages.
Install required packages.
Commands Used
sudo apt update
sudo apt upgrade -y
sudo apt install nginx git curl unzip wget htop tree net-tools rsync -y
Verification
systemctl status nginx
hostname
uptime
Expected Output
Ubuntu server running successfully.
Nginx service active.
Server ready for further configuration.