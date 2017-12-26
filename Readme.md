# Urbana
Site for coordination and guidance of local civil activists.
### Features:
- Blogs separated by topics
- Storage of guides and related documents
- Calendar with upcoming events
- Registered members listing
- QA module to request knowledge from available urban experts
- Forum
- CMS for editors to manage content  

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
##### Fabric (for continuous deployment)
Fabric is used to deploy new code to the staging/production servers.  
Fabfile contains tasks to stop, rebuild and restart docker containers.
Fabfile assumes that OS public key is available for SSH authentication.

### Provisioning (first deployment)
There are bootstrap files provided which allow to deploy site to the new server in two ways, described below.  

##### Running all the site's components directly on the host machine OS
Relevant bootstrap files are in the [host-provision](/host-provision) folder. Along with some useful template files – there's also a Fabfile which allows to deploy updated code, considering that site runs via `systemd` services. More detailed provisioning notes are in the [installation guide](/docs/install.md)

##### Running the site via Docker containers
For that it's possible to use the Makefile and other relevant files from the [docker](/docker) folder.

## Tools
### Livereload 

Livereload is used to update page in browser when watched files are changed.  
**Prerequisites:**  
- JS code embedded in every page, when site is running locally  
- Livereload server should be running on dev machine to watch files changes(installed via pip, started together with django dev server)  
