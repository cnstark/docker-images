FROM nginx:latest

RUN apt update && \
    apt install -y python3 python3-venv libaugeas0 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/certbot/ && \
    /opt/certbot/bin/pip install --upgrade pip && \
    /opt/certbot/bin/pip install certbot certbot-nginx && \
    ln -s /opt/certbot/bin/certbot /usr/bin/certbot && \
    rm -r /root/.cache/pip
