#!/bin/bash
for compose_file in ./*.yml; do
    docker-compose -f "$compose_file" pull | tee -a updates.log
    docker-compose -f "$compose_file" up -d --remove-orphans | tee -a start.log
done
docker image prune -fa | tee -a prune.log
