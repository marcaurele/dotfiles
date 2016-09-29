#!/bin/sh
# To keep in sync files with the docker remote machine
# Need to be adapted to include parameter for key and extra dir
# Needs a brew install fswatch

fswatch -o -e '.git' . | while read num ; \
do \
    rsync -avzh -e "ssh -i /path/to/home/.docker/machine/machines/machine-name/id_rsa" --progress --exclude '.git' . ubuntu@$(docker-machine ip machine-name):/home/ubuntu; \
done