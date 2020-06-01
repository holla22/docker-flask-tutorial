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

## By buying me Coffee or becoming a montly member you help me to do what I'm passionate about.
* You’ll be notified by email when new members-only posts are published.
* Support me on a monthly basis
* Join my exclusive Discord chat server where you can chat with me personally and ask for help or get help from others on the server.
* Get videos tutorials only available to members
* Discount coupons to my courses

<style>.bmc-button img{height: 34px !important;width: 35px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{padding: 7px 15px 7px 10px !important;line-height: 35px !important;height:51px !important;text-decoration: none !important;display:inline-flex !important;color:#FFFFFF !important;background-color:#FF813F !important;border-radius: 5px !important;border: 1px solid transparent !important;padding: 7px 15px 7px 10px !important;font-size: 22px !important;letter-spacing: 0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#FFFFFF !important;}</style><link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/z33man"><img src="https://cdn.buymeacoffee.com/buttons/bmc-new-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:5px;font-size:28px !important;">Buy me a coffee</span></a>