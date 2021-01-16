#!/bin/bash
cd $(dirname $0)
source ./common.sh
eval "docker-compose ${file_command} pull | tee -a $logdir/updates.log"
