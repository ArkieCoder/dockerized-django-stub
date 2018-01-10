# Dockerized Django stub
A starting point for dockerized Django development using Python 3 and Postgresql.

# Usage
- <code>scripts/init_dj_project.sh PROJECT_NAME</code>
- <code>docker-compose up</code>

# Scripts
- <code>fixperms</code> - use to set ownership of python code to $USER
- <code>init_dj_app.sh APPLICATION_NAME</code> - initialize a Django app
- <code>init_dj_project.sh PROJECT_NAME</code> - initialize a Django project
- <code>mg PROJECT_NAME MANAGE_CMD MANAGE_ARGS</code> - run <code>manage.py</code> within the container, takes project name as first argument
- <code>ripc COMMAND</code> - (run in python container) runs commands in the python container
- <code>rpipc PROJECT_NAME</code> - (run project in python container) serves the given python project
