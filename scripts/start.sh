#!/bin/sh

app=$1
if [ ! -d "state" ] || [ ! -r "state/POSTINST_COMPLETED" ]
then
  echo "Running postinstall script..."
  if [ ! -r "$app/postinst.sh" ]
  then
    cp /code/stubs/postinst.sh $app
    echo "Copied default postinst.sh to $app .. modify it there for postinstall steps specific to this app"
  fi
  $app/postinst.sh

  if [ ! -d "state" ]
  then
    mkdir state
  fi
  touch state/POSTINST_COMPLETED
fi

echo "Starting app: [$app]"
cd $app
cat requirements.txt | grep -v "Python==" > /tmp/requirements.txt 
pip install -r /tmp/requirements.txt
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
