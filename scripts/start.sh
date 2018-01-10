#!/bin/sh

app=$1
echo "Starting app: [$app]"
cd $app
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
