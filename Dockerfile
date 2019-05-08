FROM nginx:latest

MAINTAINER yuhaow97@gmail.com

ADD certbot-auto /usr/local/bin/certbot-auto
RUN chown root /usr/local/bin/certbot-auto && \
    chmod 0755 /usr/local/bin/certbot-auto
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python \
    python-dev \
    $virtualenv \
    gcc \
    $augeas_pkg \
    libssl-dev \
    openssl \
    libffi-dev \
    ca-certificates \
# RUN echo c | certbot-auto

