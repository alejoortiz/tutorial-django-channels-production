#!/bin/bash

docker-compose down
# stop containers
docker stop $(docker ps -a | egrep 'django' | awk '{print $1}')
# erase containers
docker rm $(docker ps -a | egrep 'django' | awk '{print $1}')
# remove wsgiserver images
# docker rmi -f $(docker images | egrep 'wsgiserver' | awk '{print $3}')
# remove asgiserver images
# docker rmi -f $(docker images | egrep 'asgiserver' | awk '{print $3}')
# remove proxy images
# docker rmi -f $(docker images | egrep 'proxy' | awk '{print $3}')
# start containers
docker-compose up --build