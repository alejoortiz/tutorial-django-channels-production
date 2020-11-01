#!/bin/sh

# if there is and error exit the script
set -e
# wait for the postgress db to init
python3 wait_for_postgres.py
# for static files
python manage.py collectstatic --noinput
# enable proxy for production on app
uwsgi --socket :8000 --master --enable-threads --module app.wsgi