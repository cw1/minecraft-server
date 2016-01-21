# minecraft-server
Minimal minecraft server running in a docker container.

## Usage:
Just:
```
docker pull cw1900/minecraft-server
```
and:
```
docker run -name "cool_name" -d -p 25565:25565 -v /minecraft-server-data:/minecraft/data cw1900/minecraft-server
```
