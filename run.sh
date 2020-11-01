#!/bin/bash

docker-compose down
# stop containers
docker stop $(docker ps -a | egrep 'django' | awk '{print $1}')
# erase containers
docker rm $(docker ps -a | egrep 'django' | awk '{print $1}')
# remove django images
# docker rmi -f $(docker images | egrep 'django' | awk '{print $3}')
# remove proxy images
# docker rmi -f $(docker images | egrep 'proxy' | awk '{print $3}')
# start containers
docker-compose up --build