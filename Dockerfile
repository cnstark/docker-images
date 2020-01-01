FROM nginx:latest

RUN apt-get install certbot python-certbot-nginx
