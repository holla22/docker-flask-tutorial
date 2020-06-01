FROM python:3.7-buster

# expose port 80 and 443 for web traffic
EXPOSE 80/tcp
EXPOSE 443/tcp
# install vim for editing files
RUN apt-get update && apt-get install vim -y
# upgrade pip to the latest version
RUN /usr/local/bin/python -m pip install --upgrade pip

# create a project directory
WORKDIR /project
# copy our flask app to the image project directory
COPY flask_app/ /project
# install all our python libraries we require
RUN pip install -r requirements.txt
# expose port 8003 as we are using this port to run our app with gunicorn
EXPOSE 8003/tcp
# just make double sure I'm in the directory
WORKDIR /project
# trigger the gunicorn shell script
ENTRYPOINT [ "./start_gunicorn_server.sh" ]