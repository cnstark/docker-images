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
    augeas-lenses dh-python libaugeas0 libmpdec2 libpython3-stdlib \
    libpython3.5-minimal libpython3.5-stdlib python-pip-whl \
    python-pkg-resources python-virtualenv python3 python3-minimal \
    python3-pkg-resources python3-virtualenv python3.5 \
    python3.5-minimal virtualenv
# RUN echo c | certbot-auto

