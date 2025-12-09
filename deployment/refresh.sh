#!/bin/bash

Image="gordonsig/project3:latest"

Container="project3"

docker stop $Container

docker rm $Container

docker pull $Image

docker run -d --restart unless-stopped  --name $Container -p 80:80 $Image
