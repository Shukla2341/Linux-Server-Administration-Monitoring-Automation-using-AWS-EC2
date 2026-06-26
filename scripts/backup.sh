#!/bin/bash

SOURCE="/var/www/html"
DEST="/backup"

DATE=$(date +%F-%H-%M)

sudo mkdir -p $DEST

sudo tar -czf $DEST/backup-$DATE.tar.gz $SOURCE

echo "Backup Created Successfully."

ls -lh $DEST