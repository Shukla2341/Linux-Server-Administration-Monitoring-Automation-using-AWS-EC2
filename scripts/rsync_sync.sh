#!/bin/bash

SOURCE="/var/www/html/"

DEST="ubuntu@SERVER2_PRIVATE_IP:/var/www/html/"

KEY="/home/ubuntu/server2.pem"

rsync -avz -e "ssh -i $KEY" $SOURCE $DEST

echo "Synchronization Completed."