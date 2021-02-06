#!/bin/bash

source update.sh
source down.sh
rsync -aP --delete ../appdata /mnt/storage/backups
snapraid -c ../snapraid.conf sync
chown -R jonas:jonas ../appdata /mnt/storage/
source start.sh
