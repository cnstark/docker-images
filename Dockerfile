FROM nginx:latest

RUN apt-get update && \
    apt-get install -y certbot python-certbot-nginx
