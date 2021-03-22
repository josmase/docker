#!/bin/bash
source ./common.sh
echo "$file_command"
eval "docker-compose ${file_command} up -d --remove-orphans | tee -a $logdir/start.log"

docker image prune -fa | tee -a $logdir/prune.log
docker volume prune -f | tee -a $logdir/prune.log
