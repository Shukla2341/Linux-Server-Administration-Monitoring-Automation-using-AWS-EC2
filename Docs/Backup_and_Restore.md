Backup and Restore
Objective

Automate server backups.

Backup Script

Uses tar command.

tar -czf backup.tar.gz /var/www/html
Restore
tar -xzf backup.tar.gz
Automation

Cron Job

0 2 * * * /home/ubuntu/scripts/backup.sh