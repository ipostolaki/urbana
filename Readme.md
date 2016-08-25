# Urbana
Site for coordination and guidance of local civil activists.
### Features:
- Blogs separated by topics
- Storage of guides and related documents
- Registered members listing
- QA section to request knowledge from available urban experts
- CMS for editors to manage content  
- Forum

## System info

Application is based on:  
Django, Wagtail CMS, PostgreSQL, Twitter Bootstrap

## Infrastructure facts

Docker is used for local development process. It runs web application and database containers.    

### Makefiles
Makefiles are used to build and run system for different environments.  
`make run` in the project root will run containers for dev environment.
`cd ./docker/stage/ && make run` will run staging environment containers.

### Requirements  
Pip requirements are primarily written in the Dockerfile, which is used to build container for django.

## Deploy
##### Env files
For each environment there is an env file, which is not stored in the git repo.
It keeps secrets and should be copied to the server to define contained environment variables.
##### Fabric
Fabric is used to deploy code to the staging/production servers.  
Fabfile contains tasks to stop, rebuild and restart docker containers.


## Tools
### Livereload 

Livereload is used to update page in browser when watched files are changed.  
**Prerequisites:**  
- JS code embedded in every page, when site is running locally  
- Livereload server should be running on dev machine to watch files changes(installed via pip, started together with django dev server)  

## Versions notes
Docker versions used during development:  
- docker-compose version 1.8.0, build f3628c7  
- Docker version 1.12.0, build 8eab29e  
- docker-machine version 0.8.0, build b85aac1 