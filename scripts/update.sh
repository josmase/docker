#!/bin/bash
source ./common.sh
eval "docker-compose ${file_command} pull | tee -a $logdir/updates.log"
