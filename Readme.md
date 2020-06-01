# Docker tutorial I created for Teachingyou.net

[Docker Tutorial](https://teachingyou.net) - originally posted on Teachingyou.net (my website)

## Quick details below

### Use virtualenv command to create a folder for your virtual environment
virtualenv venv

### Then activate the virtual environment with the following command
source venv/bin/activate

### Shell scripts
* get_up_and_running_local_development.sh - this script starts a development version of the flask app on your local machine
* start_gunicorn_server.sh - this script is used inside of the docker container to start the flask app in production
* docker_setup.sh - this is used to install docker and docker-compose on you cloud server running a debian buster image

### Python Flask APP setup commands
* "virtualenv venv" - this creates the virtual environment
* "pip install flask" - installs flask
* "pip install gunicorn" installs the gunicorn server

### NGINX starter config file
- nginx/nginx-live.conf
- add it to the following directory on the nginx container, /etc/nginx/conf.d/sites-available/
- modify the include in /etc/nginx/nginx.conf to look like: include /etc/nginx/conf.d/sites-available/*.conf