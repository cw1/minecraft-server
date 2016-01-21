FROM debian:8

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y && \
    apt-get upgrade -y

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y openjdk-7-jre-headless wget

RUN mkdir -p /minecraft/data \
    cd /minecraft \
    wget http://www.minecraft.net/download/minecraft_server.jar

WORKDIR /minecraft/data
CMD /usr/bin/java -Xmx1024M -Xms1024M -jar /minecraft/minecraft_server.jar nogui
