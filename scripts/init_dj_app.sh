#!/bin/bash

name=$1
docker-compose run web django-admin.py startproject $name 
sudo chown -R $USER:$USER $name 
cp stubs/requirements.txt $name
cat stubs/local_settings.py >> $name/$name/settings.py
