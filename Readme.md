# System info

Application is based on:  
Django, Wagtail CMS, PostgreSQL, Twitter Bootstrap

#Infrastructure facts

Docker is used for local development process. It spins web application and database containers.    
Docker versions used during development:  
- docker-compose version 1.7.1, build 0a9ab35  
- Docker version 1.11.2, build b9f10c9  
- docker-machine version 0.7.0, build a650a40

Makefile is used to build and run local environment.  

Pip requrements are primarily written in the Dockerfile, which is used to build container for django.

### Deploy to server
There is an env file, which is not stored in the git repo.
It keeps secrets and should be copied to the server to define contained environment variables.


### Livereload tool

Livereload is used to update page in browser when watched files are changed.  
**Prerequisites:**  
- JS code embedded in every page, when site is running locally  
- Livereload server should be running on dev machine to watch files changes(installed via pip, started together with django dev server)  
- A livereload plugin for google chrome is needed  