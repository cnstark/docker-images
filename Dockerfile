FROM nginx:latest

MAINTAINER yuhaow97@gmail.com

ADD https://dl.eff.org/certbot-auto /usr/local/bin/certbot-auto
RUN chown root /usr/local/bin/certbot-auto && \
    chmod 0755 /usr/local/bin/certbot-auto && \
    certbot-auto --install-only
