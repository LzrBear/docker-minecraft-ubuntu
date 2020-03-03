FROM ubuntu:18.04
MAINTAINER Sameer Saini (sameer.saini@outlook.com)

# install OpenJDK
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		wget openjdk-8-jdk \
	&& rm -r /var/lib/apt/lists/*

RUN adduser minecraftuser
RUN usermod -aG sudo minecraftuser

RUN mkdir minecraft
RUN cd minecraft
RUN wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
RUN chmod +x minecraft_server.jar

CMD java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui

# Default command	
#CMD ["apachectl", "-D", "FOREGROUND"]

# Ports
EXPOSE 25565 25575