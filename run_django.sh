#!/usr/bin/env bash

# Waiting for pg service is possible with official postgres docker image
# pg container start to listen to connections, only when setup/start process is complete
echo "Waiting for the database service..."
while ! nc -w 1 -z pg_database 5432;
do
  echo -n .
  sleep 1
done

echo "PostgresSQL database is ready"
python ../live.py &  # run livereload server as bg job
python manage.py migrate
python manage.py runserver 0.0.0.0:80