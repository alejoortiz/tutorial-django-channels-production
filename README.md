# django-channels-production

This code is the result of the tutorial from django channels but in production environment:

https://channels.readthedocs.io/

Python 3.8.6
Django 3.0.11
Channels 2.4.0

Docker containers

proxy = nginx
asgiserver = websockets
wsgiserver = http
pgadmin = to access db
db = postgres
redis = for channels integration
selenium = for future test

./run.sh to run docker-compose
