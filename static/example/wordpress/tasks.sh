#!/bin/sh

apt-get update
apt-get install linux-image-extra-`uname -r`
apt-get install software-properties-common git

# Add the Docker repository key to your local keychain
curl http://get.docker.io/gpg | apt-key add -

# Add the Docker repository to your apt sources list.
echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# update
apt-get update

# install
apt-get install lxc-docker


# Build the container
docker build -t slumlord/wordpress git://github.com/hhoover/docker-wordpress.git

# Start it up
docker run -d slumlord/wordpress

# Check your port
docker port <container-id> 80
