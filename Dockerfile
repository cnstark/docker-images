FROM nginx:latest

RUN apt-get update && \
    apt-get install certbot python-certbot-nginx
