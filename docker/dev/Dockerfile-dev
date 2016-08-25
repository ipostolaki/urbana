# Dockerfile for development environment

FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get -y install netcat

# these instructions with pip installs will be cached, so they will not be executed on image rebuild
RUN pip install django==1.9.7
RUN pip install wagtail==1.5.3
RUN pip install psycopg2==2.6.1
RUN pip install livereload==2.4.1
RUN pip install django-debug-toolbar==1.5
