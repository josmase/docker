#!/bin/bash
cd $(dirname $0)
source ./common.sh
echo "$file_command"
eval "docker-compose ${file_command} up -d --remove-orphans | tee -a $logdir/start.log"

docker image prune -fa | tee -a $logdir/prune.log
