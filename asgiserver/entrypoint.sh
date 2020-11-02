#!/bin/sh

# if there is and error exit the script
set -e
# wait for the postgress db to init
python3 wait_for_postgres.py
# for static files
python manage.py collectstatic --noinput
# check for migrations on db
python manage.py migrate
# enable proxy for production on websockets 0.0.0.0:8001
python manage.py runserver 0.0.0.0:8001