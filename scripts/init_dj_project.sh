#!/bin/sh

name=$1
docker-compose run web django-admin.py startproject $name .
sudo chown -R $USER:$USER $name manage.py
cat stubs/local_settings.py >> $name/settings.py
