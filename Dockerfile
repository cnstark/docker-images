FROM nginx:latest

MAINTAINER yuhaow97@gmail.com

ADD certbot-auto /usr/local/bin/certbot-auto
ADD install /install
RUN chown root /usr/local/bin/certbot-auto && \
    chmod 0755 /usr/local/bin/certbot-auto && \
    certbot-auto --install-only
