# Docker MineCraft Server Running in Ubuntu

The following commands can be used to download and run the container, the commands can also be found in the ```run.sh``` script.

```
#!/bin/bash
docker pull lzrbear/docker-minecraft-ubuntu:0.1
docker volume create minecraft
docker run -d --name minecraft-server -p 25565:25565 -p 25575:25575 -v minecraft:/minecraft lzrbear/docker-minecraft-ubuntu:0.1
```

The script will run the container with a mounted volume that can be found at ```/var/lib/docker/volumes/minecraft``` and it will also map the relevant minecraft ports.
