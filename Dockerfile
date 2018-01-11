FROM python:3.5.1

ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /code
ADD stubs/requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
ADD scripts/start.sh /bin/

EXPOSE 8000
