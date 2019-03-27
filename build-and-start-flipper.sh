#!/bin/bash

docker build -t ajeetraina/flipper
docker run -dit --privileged -v /var/run/docker.sock:/var/run/docker.sock -p 82:80 --name ajeetraina/flipper 
