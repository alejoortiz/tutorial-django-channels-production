#!/bin/bash

docker-compose down & wait $!
# stop containers
docker stop $(docker ps -a | egrep 'django' | awk '{print $1}') & wait $!
# erase containers
docker rm $(docker ps -a | egrep 'django' | awk '{print $1}') & wait $!
# remove django images
# docker rmi -f $(docker images | egrep 'django' | awk '{print $3}')
# remove proxy images
# docker rmi -f $(docker images | egrep 'proxy' | awk '{print $3}')
# start containers
docker-compose up --build & wait $!