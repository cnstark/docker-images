# Official nginx docker image with certbot

## Base Usage

See [Docker Hub](https://hub.docker.com/_/nginx)

Replace nginx:tag with yuhaow/nginx:latest

## Certbot

### Get a certificate

```shell
docker exec -it your_container_name certbot-auto --nginx
```

See [Certbot](https://certbot.eff.org/lets-encrypt/debianjessie-nginx) for other usages, use 'docker exec -it your_container_name' to execute