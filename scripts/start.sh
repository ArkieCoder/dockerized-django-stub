#!/bin/sh

app=$1
echo "Starting app: [$app]"
cd $app
cat requirements.txt | grep -v "Python==" > /tmp/requirements.txt 
pip install -r /tmp/requirements.txt
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
