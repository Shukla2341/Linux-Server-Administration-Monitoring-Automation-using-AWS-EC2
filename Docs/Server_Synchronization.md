Server Synchronization
Objective

Synchronize files between Server 1 and Server 2 every 15 minutes.

Tool Used

Rsync

Command
rsync -avz -e ssh /var/www/html ubuntu@server2:/var/www/html
Automation
*/15 * * * * /home/ubuntu/scripts/rsync_sync.sh