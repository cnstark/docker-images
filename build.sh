#!/bin/bash

docker pull nginx:latest
docker build -t cnstark/nginx:latest .
version=`docker run -t --rm nginx:latest bash -c "nginx -version"`
echo $version
docker tag cnstark/nginx:latest cnstark/nginx:${version:21:-1}

