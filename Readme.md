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

## By buying me Coffee or becoming a monthly member you help me to do what I'm passionate about.
* You’ll be notified by email when new members-only posts are published.
* Support me on a monthly basis
* Join my exclusive Discord chat server where you can chat with me personally and ask for help or get help from others on the server.
* Get videos tutorials only available to members
* Discount coupons to my courses

<a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/z33man"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
