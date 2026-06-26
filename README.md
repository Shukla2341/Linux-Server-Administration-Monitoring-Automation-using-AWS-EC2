# Linux-Server-Administration-Monitoring-Automation-using-AWS-EC2

A hands-on DevOps project demonstrating Linux server administration, automation, monitoring, backup, networking, and security using AWS EC2.

---

## 📖 Project Overview

This project covers the complete lifecycle of Linux server administration on AWS. It includes server setup, monitoring, backup automation, server-to-server synchronization, networking optimization, security hardening, SSH key management, and user access control.

The project is designed to simulate real-world DevOps and Linux System Administration tasks.

---

# 🏗️ Architecture

```
                        AWS Cloud
                            │
                    Amazon VPC
                            │
        ┌───────────────────┴───────────────────┐
        │                                       │
   Ubuntu EC2 Server 1                    Ubuntu EC2 Server 2
        │                                       │
        ├──────── SSH Communication ────────────┤
        ├──────── Rsync Synchronization ────────┤
        │
        ▼
   CloudWatch Agent
        │
        ▼
   Amazon CloudWatch
        │
        ▼
 Monitoring Dashboard
```

---

# 🛠️ Technologies Used

- Ubuntu Linux
- AWS EC2
- AWS VPC
- Security Groups
- SSH
- Bash Scripting
- Cron Jobs
- Rsync
- AWS CloudWatch
- Git
- GitHub

---

# 📂 Project Features

## 1. Linux Server Setup

- Launch Ubuntu EC2 instance
- Connect using SSH
- Install essential packages
- Configure hostname
- Create Linux users
- Update system packages

---

## 2. Server Configuration

Configured Linux server with production-ready settings.

### Configuration

- Hostname
- Timezone
- Network configuration
- Package updates
- User management

---

## 3. Server Monitoring

Configured CloudWatch Agent to monitor:

- CPU Usage
- Memory Usage
- Disk Usage
- Network Usage
- System Logs

---

## 4. Server Testing

Performed testing for:

- CPU Load
- Memory Usage
- Disk Usage
- SSH Connectivity
- Network Connectivity

---

## 5. Automated Backup

Created Bash scripts for automatic backups.

### Features

- Scheduled Backup
- Incremental Backup
- Backup Verification

---

## 6. Server-to-Server Synchronization

Implemented file synchronization between two Linux servers.

### Features

- Passwordless SSH
- Rsync Synchronization
- Automated Cron Job
- Synchronization every 15 minutes

---

## 7. Server Communication & Networking

Configured secure communication between servers.

### Tasks

- SSH Communication
- Private IP Connectivity
- Ping Verification
- Network Optimization

---

## 8. Linux Server Security

Implemented security best practices.

### Security Features

- AWS VPC
- Security Groups
- UFW Firewall
- Disable Root Login
- Disable Password Authentication
- Least Privilege Access

---

## 9. SSH Key Rotation

Configured periodic SSH key rotation.

### Features

- Weekly SSH Key Update
- Authorized Keys Management
- Secure Authentication

---

## 10. User Login Restriction

Configured server to allow only one active login session.

### Features

- User Session Monitoring
- Single Active User Login
- Access Restriction

---

# 📁 Project Structure

```
Linux-Server-Administration/
│
├── README.md
├── scripts/
│   ├── server_setup.sh
│   ├── backup.sh
│   ├── rsync_sync.sh
│   ├── monitor.sh
│   ├── rotate_ssh_keys.sh
│   ├── login_limit.sh
│   └── firewall_setup.sh
│
├── configs/
│   ├── sshd_config
│   ├── rsync.conf
│   ├── sysctl.conf
│   └── crontab.txt
│
├── monitoring/
│   ├── cloudwatch-agent.json
│   └── screenshots/
│
├── docs/
│   ├── Setup.md
│   ├── Monitoring.md
│   ├── Backup.md
│   ├── Networking.md
│   └── Security.md
│
└── images/
```

---

# 💻 Commands Used

### Update System

```bash
sudo apt update && sudo apt upgrade -y
```

### Install Required Packages

```bash
sudo apt install nginx rsync unzip curl git -y
```

### Check Server Health

```bash
top
free -h
df -h
uptime
```

### Test Network

```bash
ping google.com
ping <SERVER_PRIVATE_IP>
```

### SSH Login

```bash
ssh -i key.pem ubuntu@SERVER_PUBLIC_IP
```

### Rsync

```bash
rsync -avz -e ssh /source/path ubuntu@SERVER2:/destination/path
```

### Cron Job

```bash
crontab -e
```

Example:

```cron
*/15 * * * * /home/ubuntu/scripts/rsync_sync.sh
```

---

# 📊 Skills Demonstrated

- Linux Administration
- Bash Scripting
- AWS EC2
- AWS VPC
- CloudWatch Monitoring
- SSH
- Rsync
- Cron Jobs
- Linux Security
- Networking
- Backup Automation
- System Administration
- Git & GitHub

---

# 📸 Screenshots

Add screenshots for:

- EC2 Instances
- SSH Login
- CloudWatch Dashboard
- Server Monitoring
- Backup Execution
- Rsync Synchronization
- Security Groups
- Cron Job
- Server Communication

---

# 🎯 Learning Outcomes

Through this project, I gained practical experience in:

- Linux Server Administration
- AWS Infrastructure
- Server Monitoring
- Backup & Recovery
- Automation using Bash
- Networking
- Linux Security
- SSH Authentication
- DevOps Best Practices

---

# 🚀 Future Enhancements

- Docker
- Kubernetes
- Terraform
- Ansible
- Prometheus
- Grafana
- CI/CD Pipeline
- AWS Systems Manager
- Auto Scaling

---

# 👨‍💻 Author

**Ashutosh Shukla**

- B.Tech CSE (AI & ML)
- AWS Cloud & DevOps Enthusiast
- Linux System Administration
- Automation & Monitoring

⭐ If you found this project useful, consider giving it a **Star** on GitHub.
