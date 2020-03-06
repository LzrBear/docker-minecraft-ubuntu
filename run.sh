#!/bin/bash
docker pull lzrbear/docker-minecraft-ubuntu:0.1
docker volume create minecraft
docker run -d --name minecraft-server -p 25565:25565 -p 25575:25575 -v minecraft:/minecraft lzrbear/docker-minecraft-ubuntu:0.1