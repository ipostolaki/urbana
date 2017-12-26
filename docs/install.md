This was written down while installing all the components of Urbana site on a clean Ubuntu 16.04.1 LTS.

## 1 Install Postgres & PostGis

sudo apt-get update  
sudo apt-get install postgresql postgresql-contrib

Installed version: psql (9.5.6)

##### Install PostGis

`add-apt-repository ppa:ubuntugis/ppa`  
`sudo apt-get update`  
`sudo apt-get install postgis`

Installed version: postgis (2.2.1+dfsg-3~xenial0)

##### Install additional dependencies

`sudo apt-get update && sudo apt-get -y install binutils libproj-dev gdal-bin`  
`sudo apt-get install python-psycopg2`  
`sudo apt-get install libpq-dev`


## 2 Configure Postgres & PostGis

sudo -u postgres createuser --pwprompt --superuser urbana
createdb urbana

```You are connected to database "urbana" as user "urbana" via socket in "/var/run/postgresql" at port "5433".```

### Restore data from the backup
psql -U urbana_db_user -d urbana -f ./urbana/dumps/latest.sql

### Enable postgis for the created database
CREATE EXTENSION IF NOT EXISTS postgis;  
CREATE EXTENSION IF NOT EXISTS postgis_topology;  
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;  
CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;  



## 3 Install requirements for the Django

`sudo apt-get install python3-pip`  
`sudo pip3 install -r urbana/urbana/requirements.txt`

### Allow uploads into media folder
`cd /home/urbana/urbana/urbana`   
`sudo chgrp -R www-data media`  
`sudo chmod -R g+w media`


## 4 Install & configure Nginx
`sudo apt-get update`  
`sudo apt-get install nginx`

`sudo nano /etc/nginx/sites-available/urbana`  
(put contents of the file nginx_template)

`sudo ln -s /etc/nginx/sites-available/urbana /etc/nginx/sites-enabled`

`sudo systemctl restart nginx`


## 5 Configure automatic start on server restart
Copy content of `systemd_template` file here:  
```sudo nano /etc/systemd/system/gunicorn.service```  
Then run  
```sudo systemctl start gunicorn```  
```sudo systemctl enable gunicorn```  (will enable auto start on boot)


# How to's

#### Start / Stop psql service
`sudo service postgresql start`

#### Start / Stop gunicorn service
`sudo service gunicorn start`  
`sudo service gunicorn stop`

### Reload systemd config files
`systemctl daemon-reload`

#### Restore backup, when DB already exists (drop database)

`dropdb -U urbana urbana`  

## Nginx

#### Check nginx config syntax
`sudo nginx -t`

#### Nginx logs
`/var/log/nginx/`

#### Restart Nginx after config change
`sudo systemctl restart nginx`


# Deployment via fabric
Fabric needs to be installed and used via Python 2.7, on the local development machine.
Then from the `/host-provision` folder, it is possible to use `fab deploy` command. This will deploy repository contents to the remote server. Fabric will use ssh host hardcoded in the file. OS default public key will be used for authentication.
