#!/usr/bin/env python3

import time
import psycopg2

wait_db = True

while wait_db:
    try:
        connection = psycopg2.connect(dbname="postgres",user="admin",password="admin",host="db",port="5432")
        print("Postgres is up - continue")
        wait_db = False
    except psycopg2.OperationalError:
        print("Postgres is unavailable - waiting")
        wait_db = True
        time.sleep(1)