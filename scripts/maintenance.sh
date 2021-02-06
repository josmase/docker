#!/bin/bash
echo =====================  $(date)  ==============================================
source update.sh
source down.sh
source cleanup.sh
rsync -aP --delete ../appdata /mnt/storage/backups
snapraid -c ../snapraid.conf sync
chown -R jonas:jonas ../appdata /mnt/storage
source start.sh
