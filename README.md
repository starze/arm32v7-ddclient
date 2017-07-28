# starze/arm32v7-ddclient

Simple ddclient based on arm32v7/debian:latest for running on ARM-based computers like Raspberry Pi.

# Volumes
* Connect your `ddclient.conf` into the volume `/config/dclient.conf`

# start container
`docker run -d -v ~/etc/ddclient:/config --name ddclient --restart=unless-stopped starze/arm32v7-ddclient`

# build container
`docker build -t arm32v7-ddclient .`

# Dockerfile and Code
https://github.com/starze/arm32v7-ddclient
