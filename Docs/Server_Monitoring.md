Server Monitoring
Objective

Monitor server performance using AWS CloudWatch Agent.

Metrics Collected
CPU Usage
Memory Usage
Disk Usage
Application Logs
Commands
top
free -h
df -h

CloudWatch Agent

sudo systemctl status amazon-cloudwatch-agent
Expected Result

Metrics appear inside AWS CloudWatch.