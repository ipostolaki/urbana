# Dockerfile for development environment

FROM python:3.5
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get -y install netcat

# these instructions with pip installs will be cached, so they will not be executed on image rebuild
RUN pip install django==1.9.7
RUN pip install wagtail==1.5.2
RUN pip install psycopg2==2.6.1
RUN pip install livereload==2.4.1