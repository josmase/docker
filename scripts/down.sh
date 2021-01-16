#!/bin/bash
cd $(dirname $0)
source ./common.sh
eval "docker-compose ${file_command} down --remove-orphans | tee -a $logdir/start.log"
